/*
 * Projeto: Circuito Somador de 8 bits
 * Descrição: Pega o resultado de "a" and "b" e faz um or com a saída invertida de "b"
 * Autores: Patricia Santos e Richard Ferreira
*/

module main();
  
  bit [7:0] valor1, valor2;
  bit [7:0] soma;
  
  somador(valor1, valor2, soma);
  
  initial begin
    valor1 <= 8'b11111100;
    valor2 <= 8'b00000011;
    
    #1 $display("    A: %b", valor1);
    #1 $display("    B: %b", valor2);
    
    #1 $display("    Soma: %b", soma);
    
    $finish;
    
  end
  
endmodule: main;
