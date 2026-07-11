module mux(input d0,d1,s, output out_mux);
  assign out_mux = (s) ? d1 : d0;
endmodule
