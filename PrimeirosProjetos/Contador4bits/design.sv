//Contador Up / Down de 4 bits com Reset, Load

module contadorUpDown(input logic clk, reset, ld, ud,
                      input logic[3:0] data,
                      output logic[3:0] count);
  always_ff@(posedge reset or posedge clk)
  begin
    if(reset)
      count <= 0;
    else if (ld) 
      count <= data;
    else if(ud)
      count <= count + 1;
    else 
      count <= count -1;
    
    $display("Contador = %4b", count);
  end
endmodule
    
