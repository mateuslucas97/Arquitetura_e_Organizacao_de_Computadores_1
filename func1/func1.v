module func1(I0,I1,S,out);
  input I0,I1;
  input S;
  output out;
   assign out = S ? I1 : I0;
   
 endmodule
/* este modulo é um seletor (mux 2x1) que vai selecionar uma entrada
conforme seu sinal lógico */