module ulaDesign(
    
    input bit clk, crtl_des,
    input bit [2:0] crtl_ula,
  	input wire [7:0] a, b,
 	output wire [7:0] c

);

  byte ra, rb, rc, ula, des;
  logic [7:0] result;

  always_ff @ (posedge clk) begin
    //registradores recebendo os fios
    ra <= a;
    rb <= b;
    
    //crtl_des
    if (crtl_des) begin 
        des <= ula << 1; // Deslocar para esquerda
    end
    else
      des <= ula;    	 // ByPass
    
    rc <= des;
    
  end
  
  always_comb begin
    
    //crtl_ula
    case (crtl_ula)
        3'b000: ula <= ra + rb; // Soma
        3'b001: ula <= ra - rb; // Subtração
        3'b010: ula <= ra * rb; // Multiplicação
        3'b011: ula <= ra / rb; // Divisão
        3'b100: ula <= ra & rb; // AND bit-a-bit
        3'b101: ula <= ra | rb; // OR bit-a-bit
        3'b110: ula <= ~ra;    // NOT bit-a-bit de A
        3'b111: ula <= rb;    // ByPass de B
   
    endcase
    
	end

// Saída sendo atribuída a c
assign c = ula;

endmodule   
