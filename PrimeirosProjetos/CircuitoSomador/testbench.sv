/*
 * Projeto: Circuito Somador de 8 bits
 * Descrição: Fazer um circuito somador de 8bits e mostrar o resultado em binário e decimal
 * Autores: Patricia Santos e Richard Ferreira
*/

module main();
  
  byte valor1, valor2, soma;
  
  somador(valor1, valor2, soma);
  
  initial begin
    valor1 <= 8'b11111100;
    valor2 <= 8'b00000011;
    
    #1 $display("    *************************");

    #1 $display("    A Binario: %b", valor1);
    #1 $display("    B Binario: %b", valor2);
    #1 $display("    A Decimal: %d", valor1);
    #1 $display("    B Decimal: %d", valor2);
    #1 $display(" ");
    
    #1 $display("    Soma binario: %b", soma);
    #1 $display("    Soma decimal: %d", soma);
    
    #1 $display("    *************************");
    
    $finish;
    
  end
  
endmodule: main;
