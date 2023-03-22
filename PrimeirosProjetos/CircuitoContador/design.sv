module contador(
  input clk, rst, ud,
  output [7:0] cont
  );
  
  reg[7:0] cont;
  
  always_ff @(posedge clk or posedge rst) 
    begin
      if(rst) 
        begin
          cont <= 8'b0; //Reinicia do 0
      end 

      else
        case(ud)
          0:
            begin
            	cont <= cont - 1; //decrementa
              	$display("Saída =\n   Decimal: %d\n   Binario: %b", cont, cont);
          end
          1:
            begin
            	cont <= cont + 1; //incrementa
              	$display("Saída =\n   Decimal: %d\n   Binario: %b", cont, cont);
          end      
        endcase
      end
  
endmodule: contador;
