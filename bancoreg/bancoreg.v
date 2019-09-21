module multiplexador (input [15:0] entrada0,entrada1, entrada2, entrada3, entrada4, entrada5,entrada6, entrada7, 
                      input [2:0] controle, 
                      output reg [15:0]saida);
always @(controle,entrada0,entrada1, entrada2, entrada3, entrada4, entrada5,entrada6, entrada7)    
		case (controle)
			0 : saida <= entrada0;      
			1 : saida <= entrada1;      
			2 : saida <= entrada2;      
			3 : saida <= entrada3;      
			4 : saida <= entrada4;      
			5 : saida <= entrada5;      
			6 : saida <= entrada6;      
			7 : saida <= entrada7;    
		endcase
  
endmodule
  
module registrador (input [15:0] dado,                    
                    input clock, habilita_escrita,                    
                    output reg [15:0] saida);
                    
  always @(posedge clock, posedge habilita_escrita)
    begin
		  if(habilita_escrita == 1) begin
			   saida = 0; 
		  end
		  else begin
			   saida = dado;        
		  end     
	 end  
	
endmodule

module decodificador (input [2:0] entrada, output reg [7:0] saida);
    
	always @(entrada)
  begin  
		case (entrada)
			3'd0 : saida <= 8'd1;      
			3'd1 : saida <= 8'd2;
			3'd2 : saida <= 8'd4;
			3'd3 : saida <= 8'd8;
			3'd4 : saida <= 8'd16;
			3'd5 : saida <= 8'd32;
			3'd6 : saida <= 8'd64;
			3'd7 : saida <= 8'd128;
		endcase

end

endmodule

module bancoreg(Read1,Read2,WriteReg,WriteData,RegWrite,Data1,Data2,clock); 
	input [2:0] Read1,Read2,WriteReg;
	input [15:0] WriteData;
	input RegWrite, clock;
	output[15:0] Data1, Data2;
	wire [7:0]saida_dec;
	wire [7:0] saida_reg0, saida_reg1, saida_reg2, saida_reg3, saida_reg4, saida_reg5, saida_reg6, saida_reg7;
  
  //registrador (input [15:0] dado,input clock, habilita_escrita,output reg [15:0] saida);
  registrador reg0(entrada1, clock, saida_dec[0] & RegWrite, saida_reg0);
  registrador reg1(entrada1, clock, saida_dec[1] & RegWrite, saida_reg1);
  registrador reg2(entrada1, clock, saida_dec[2] & RegWrite, saida_reg2);
  registrador reg3(entrada1, clock, saida_dec[3] & RegWrite, saida_reg3);
  registrador reg4(entrada1, clock, saida_dec[4] & RegWrite, saida_reg4);
  registrador reg5(entrada1, clock, saida_dec[5] & RegWrite, saida_reg5);
  registrador reg6(entrada1, clock, saida_dec[6] & RegWrite, saida_reg6);
  registrador reg7(entrada1, clock, saida_dec[7] & RegWrite, saida_reg7);
  
  //decodificador (input [2:0] entrada, output reg [7:0] saida);
  decodificador dec1(WriteAdd, saida_dec);
  
  //multiplexador (input [15:0] entrada0,entrada1, entrada2, entrada3, entrada4, entrada5,entrada6, entrada7,input[2:0] controle,output reg [15:0]saida);
  multiplexador mux1(saida_reg0,saida_reg1,saida_reg2,saida_reg3,saida_reg4,saida_reg5,saida_reg6,saida_reg7,Read1,Data1);
  multiplexador mux2(saida_reg0,saida_reg1,saida_reg2,saida_reg3,saida_reg4,saida_reg5,saida_reg6,saida_reg7,Read2,Data2); 
endmodule