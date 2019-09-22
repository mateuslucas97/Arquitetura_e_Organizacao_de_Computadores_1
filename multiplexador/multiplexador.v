module multiplexador (input [15:0] entrada0,entrada1, entrada2, entrada3, entrada4, entrada5,entrada6, entrada7, 
                      input [2:0] controle, 
                      output reg [15:0]saida);
  
  always @(entrada0,entrada1, entrada2, entrada3, entrada4, entrada5,entrada6, entrada7)
    case (controle)
      0 : saida <= entrada0;
      1 : saida <= entrada1;
      2 : saida <= entrada2;
      3 : saida <= entrada3;
      4 : saida <= entrada4;
      5 : saida <= entrada5;
      6 : saida <= entrada6;
      7 : saida <= entrada7;
      default : saida <= entrada0;
    endcase
  endmodule