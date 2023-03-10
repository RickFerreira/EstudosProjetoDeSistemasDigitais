/*
 * Projeto: Circuito com and e or
 * Descrição: Pega o resultado de "a" and "b" e faz um or com a saída invertida de "b"
 * Autores: Patricia Santos e Richard Ferreira
*/

module tb();

  logic a, b, resultado;//declarando as variáveis
   
initial begin //Onde inicia o código
  $dumpfile("tb.vcd");
  $dumpvars(1,tb);
  
  a <= 0;//Atribuindo o valor 1 a variável a
  b <= 1;//Atribuindo o valor 1 a variável b
  #1 //Aguardando um instante de tempo
  resultado <=  (a && b) || (!b);//Atribuindo a operação feita à variável resultado 
  //Pega o resultado de a and b e faz o or com a saída invertida de b
  #1 //Aguardando um instante de tempo
  $display (" 1)   a = %b, b = %b, resultado = %b", a, b, resultado); //Imprimindo cada variável

  $finish;//Finalizando o código
  
end //Finalizando o initial

endmodule: tb;
