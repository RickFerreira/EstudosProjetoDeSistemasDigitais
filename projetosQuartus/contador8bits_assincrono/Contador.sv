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
              	$display("Saída =\n   Decimal: %d\n   Binario: %b", cont, cont);
          end
          1:
            begin
            	count <= count + 1; //incrementa
              	$display("Saída =\n   Decimal: %d\n   Binario: %b", cont, cont);
          end 
			 default:
				count <= 8'b0; //Reinicia do 0
        endcase
      end
  
endmodule: contador

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
        if (count == 5000000 ) begin
            count = 0;
            clk_out = ~clk_out;
         end
         else begin
            count = count + 1;
         end
    end
endmodule 
