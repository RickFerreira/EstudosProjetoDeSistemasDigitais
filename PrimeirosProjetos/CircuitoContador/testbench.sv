/*
 * Projeto: Circuito contador de 8 bits
 * Descrição: Fazer um circuito contador com 8 saídas, assincrono up/down
 * Autores: Patricia Santos e Richard Ferreira
*/

module contadorTestBench;
  reg clk = 1'b0, rst, ud;
  wire[7:0] cont;
  
  contador dut(
     .clk(clk),
     .rst(rst),
     .ud(ud),
     .cont(cont)
  );
  
  initial begin
    
    rst = 1'b1; 
    ud = 1'b0;
     
    $display("\n*********************\n");
    
    //Iniciar contador
    #10 rst = 1'b0; //Libera o sinal do reset
    
    //Contagem crescente
    ud = 1'b1;
    //Vai alternando o sinal
      #5 clk = ~clk;  
      #5 clk = ~clk;
      #5 clk = ~clk;
      #5 clk = ~clk;
      	
    
    //Contagem decrescente
    ud = 1'b0;
      #5 clk = ~clk;
      #5 clk = ~clk;
      
    
    //Reset
      rst = 1'b1;
      ud = 1'b1;
      #10 rst = 1'b0;
      #5 clk = ~clk;
      #5 clk = ~clk;
      
    
    $display("\n********************\n");
    
    $finish;//Fim da simulação
  end
  
  always #5 clk = ~clk;//Gerar o sinal de clock
  
endmodule
