module func2(out,ctl,clk,reset);
  output [7:0] out;
  input ctl,clk,reset;
  reg [7:0] out;
  
  always @(posedge clk)
  if(reset) begin
    out <= 8'b0;
  end
else if(ctl) begin
  out <= out +1;
end
else begin 
  out <= out -1;
end

endmodule
/* este module é um contador assincrono de mod 8
 crescente/decrescente que neste caso está sendo resetado o tempo todo*/
