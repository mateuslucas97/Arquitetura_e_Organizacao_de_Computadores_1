module mux_4x1(a,b,c,d, Control, S); //declara�ao das vari�veis
  input a,b,c,d; //entradas do circuito
  input [1:0] Control;
  output S; //saida do circuito
  wire n0,n1;
  
    assign S = (Control[0]) ? n1 : n0;
    assign n1 = (Control[1]) ? d : b;
    assign n0 = (Control[1]) ? c : a;
  
  
endmodule

