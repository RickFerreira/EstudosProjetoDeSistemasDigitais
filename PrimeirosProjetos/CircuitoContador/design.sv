module contador(
  input wire clkk, rstt, udd,
  output reg [7:0] contt
  );
  
  always @(posedge clkk) 
    begin
      if(rstt) begin
        contt <= 8'b0; //Reinicia do 0
      end else if(udd == 1) begin
        contt <= contt + 1; //incrementa
      end else if(udd == 0) begin
        contt <= contt - 1; //decrementa
      end
    end
  
endmodule
