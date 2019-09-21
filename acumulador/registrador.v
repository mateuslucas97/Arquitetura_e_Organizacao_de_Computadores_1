module registrador(data,clock,clear,saida);
	input [15:0] data;
	input clock,clear;
	output reg [15:0] saida;

	always @(posedge clock, posedge clear)
		begin
			if(clear == 1) begin
				saida = 0;
			end
			else begin
				saida = data;
			end
		end
endmodule