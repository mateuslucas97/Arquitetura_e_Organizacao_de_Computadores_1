module multiplicador(
        output [63:0] result,
        input [31:0] a,
        input [31:0] b
      );

        assign result = a * b;

      endmodule