module exercicio(clock,q,d);
input clock,d;
output reg q;

  initial begin
    q=0;
  end

always@( negedge clock) 
  begin
    q=d;
  end

endmodule
