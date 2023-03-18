/*
 * Projeto: ULA de 8 bits
 * Descrição: Desenvolver um circuito de um ULA de 8 bits, com entradas e saídas registradas em SystemVerilog
 * Autores: Patricia Santos e Richard Ferreira
 * Detalhes: 
    * Palavras de entradas e saída de 8 bits

    * CLK = Transição ascendente;

    * CRTL_ULA 
        000 = Soma
        001 = Subtração
        010 = Multiplicação
        011 = Divisão
        100 = AND bit-a-bit
        101 = OR bit-a-it
        110 = NOT bit-a-bit de A
        111 = ByPass de B

    * CTRL_DES
         0 = ByPass
         1 = Desloca para esquerda

    Interface do modulo: module contador ( clk, crtl_ula, crtl_des, a, b, c );
*/

module ulaTestBench;

  logic clk, crtl_des;
  logic [2:0]crtl_ula; 
  byte a, b, c;
  
ulaDesign teste ( 
  .clk(clk), 
  .crtl_ula(crtl_ula), 
  .crtl_des(crtl_des), 
  .a(a), 
  .b(b), 
  .c(c)
);

  initial begin
	
    $monitor("***************************\n a (decimal) = %d \n a (binary) = %b\n\n b (decimal) = %d \n b (binary) = %b\n\n crtl_ula = %b\n crtl_des = %b\n\n c (decimal) = %d \n c (binary) = %b\n***************************", a, a, b, b, crtl_ula, crtl_des, c, c);
  
  end
  
  initial begin           
   
    $display("           Soma");
    
    clk = 1;
    a = 10;
    b = 2;
    crtl_ula = 3'b000;
    crtl_des = 1'b0;
    #10
    
    clk = 0;
    #10
    
    $display("        Subtração");
    clk = 1;
    a = 3;
    b = 7;
    crtl_ula = 3'b001;
    crtl_des = 1'b0;
    #10
    clk = 0;
    #10

    $display("      Multiplicação");
    clk = 1;
    a = 2;
    b = 2;
    crtl_ula = 3'b010;
    crtl_des = 1'b0;
    #10
    clk = 0;
    #10

    $display("         Divisão");
    clk = 1;
    a = 20;
    b = 10;
    crtl_ula = 3'b011;
    crtl_des = 1'b0;
    #10
    clk = 0;
    #10

    $display("           And");
    clk = 1;
    a = 0;
    b = 255;
    crtl_ula = 3'b100;
    crtl_des = 1'b0;
    #10
    clk = 0;
    #10

    $display("           Or");
    clk = 1;
    a = 255;
    b = 0;
    crtl_ula = 3'b101;
    crtl_des = 1'b0;
    #10
    clk = 0;
    #10

    $display("            Not");
    clk = 1;
    a = 255;
    crtl_ula = 3'b110;
    crtl_des = 1'b0;
    #10
    clk = 0;
    #10

    $display("           Pass");
    clk = 1;
    a = 0;
    b = 40;
    crtl_ula = 3'b111;
    crtl_des = 1'b0;
    #10
    clk = 0;
    #10

    $display("        Deslocamento");
    clk = 1;
    a = 10;
    b = 2;
    crtl_ula = 3'b000;
    crtl_des = 1'b0;
    #10
    clk = 0;
    
    #10
    clk = 1;
    crtl_des = 1'b1;
    #10
    clk = 0;
  
  end
  
endmodule
