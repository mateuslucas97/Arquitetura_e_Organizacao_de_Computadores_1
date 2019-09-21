module multiplicador(a,b,resultado);
	input [7:0] a,b;
	output reg [7:0] resultado;

	always @(*)
		begin 
			resultado = a * b;
		end
endmodule