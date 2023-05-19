/*
 * Projeto: Circuito contador de 8 bits
 * Descrição: Fazer um circuito contador com 8 saídas, assincrono up/down, para simular na fpga
 * Autores: Patricia Santos e Richard Ferreira
 * Data: 19/05/2023
*/
//criando modulo contador
module contador(
  input clk, rst, ud,
  output [7:0] count
  );
   
  always_ff @(posedge clk or posedge rst) 
    begin
      if(rst) 
        begin
          count <= 8'b0; //Reinicia do 0
      end 

      else
        case(ud)
          0:
            begin
            	count <= count - 1; //decrementa
		$display("Saída =\n   Decimal: %d\n   Binario: %b", count, count);
          end
          1:
            begin
            	count <= count + 1; //incrementa
		$display("Saída =\n   Decimal: %d\n   Binario: %b", count, count);
          end 
	     default:
		count <= 8'b0; //Reinicia do 0
        endcase
      end
  
endmodule: contador
//Criando o modulo de divisor de frequencia 
module divfreq(clk_in, rst, clk_out);
         
  input clk_in, rst;
  output bit clk_out;
 
  int count;
   
  always_ff @(posedge clk_in, posedge rst)
    begin
      if (rst) begin
        count = 0;
        clk_out = 0;
      end
      else
	//configurando para 5hz 
        if (count == 5000000 ) begin
            count = 0;
            clk_out = ~clk_out;
         end
         else begin
            count = count + 1;
         end
    end
endmodule 
