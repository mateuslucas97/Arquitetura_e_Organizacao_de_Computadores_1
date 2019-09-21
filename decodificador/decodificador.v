module decodificador (input [2:0] entrada, output reg [7:0] saida);
  
  always @(*)
  begin
    case (entrada)
      2'b00 : saida = 0000001;
      2'b01 : saida = 0000010;
      2'b10 : saida = 0000100;
      2'b11 : saida = 0001000;
      default : saida = 0000000;
  endcase
end

endmodule
