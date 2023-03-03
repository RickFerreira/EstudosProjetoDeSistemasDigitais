module somador(valor1, valor2, soma);
  input bit [7:0] valor1, valor2;
  output bit [7:0] soma;
  always_comb begin
    soma = valor1 + valor2;
  end
endmodule: somador
