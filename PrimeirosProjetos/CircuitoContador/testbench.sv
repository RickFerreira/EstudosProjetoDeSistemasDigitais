/*
 * Projeto: Circuito contador de 8 bits
 * Descrição: Fazer um circuito contador com 8 saídas, assincrono up/down
 * Autores: Patricia Santos e Richard Ferreira
*/

module contadorTestBench;
  reg clk = 1'b0, rst, ud;
  wire[7:0] cont;
  
  contador dut(
     .clkk(clk),
     .rstt(rst),
     .udd(ud),
     .contt(cont)
  );
  
  initial begin
    
    rst = 1'b1; 
    ud = 1'b0;
     
    $display("        ***************************************");
    
    //Iniciar contador
    #10 rst = 1'b0; //Libera o sinal do reset
    
    //Contagem crescente
    ud = 1'b1;
    //Vai alternando o sinal
      #5 clk = ~clk;  
      #5 clk = ~clk;
      #5 clk = ~clk;
      #5 clk = ~clk;
      #5 $display("	UP = Decimal: %d  Binario: %b", cont, cont);	
    
    //Contagem decrescente
    ud = 1'b0;
      #5 clk = ~clk;
      #5 clk = ~clk;
      #5 $display("	DOWN = Decimal: %d  Binario: %b", cont, cont);
    
    //Reset
      rst = 1'b1;
      ud = 1'b1;
      #10 rst = 1'b0;
      #5 clk = ~clk;
      #5 clk = ~clk;
      #5 $display("	RESET = Decimal:%d  Binario: %b", cont, cont);
    
    $display("        ***************************************");
    
    $finish;//Fim da simulação
  end
  
  always #5 clk = ~clk;//Gerar o sinal de clock
  
endmodule
