module acumulador (a,b,clock,clear,resultadoS);
	input [7:0] a,b;
	input clock,clear;
	output [15:0] resultadoS;
	
	wire [15:0] resultadoM, registrador;

	multiplicador m(a, b, resultadoM);
	somador s(resultadoM, registrador,resultadoS);
	registrador regs(resultadoS, clock,clear);

endmodule
