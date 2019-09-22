module somador(a,b,Cin,s,Cout);
	input a,b,Cin;
	output s, Cout;
	
	wire w1,w2,w3;
	
	xor(z1,a,b);
	xor(s,z1,Cin);
	and(z3,a,b);
	or(Cout,z2,z3);

endmodule
