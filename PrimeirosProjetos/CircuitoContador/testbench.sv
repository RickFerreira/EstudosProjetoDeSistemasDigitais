/*
 * Projeto: Circuito contador de 8 bits
 * Descrição: Fazer um circuito contador com 8 saídas, assincrono up/down
 * Autores: Patricia Santos e Richard Ferreira
*/

module contadorTestBench;
  bit[1] clk, rst, ud;
  wire[7:0] cont;
  
  contador dut(
     .clk(clk),
     .rst(rst),
     .ud(ud),
     .cont(cont)
  );
  
  initial 
    begin
    $display("\n*********************\n");
    
    clk = 0;
    #1rst = 0; 
    #1rst = 1; 
    #1rst = 0; 
    ud = 1;
    #1020 ud = 0;
    #1024
    
    $display("\n*********************\n");
    $finish;
  end
  
  always 
    begin
    #2 clk = ~clk;//Gerar o sinal de clock
  end
  
endmodule
