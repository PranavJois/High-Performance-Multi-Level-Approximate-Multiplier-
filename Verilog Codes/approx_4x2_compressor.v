module approx_4x2_compressor(input a,b,c,d, output sum, carry, cout);
  wire o1,o2,o3,o4,o5,o6;
  mux mux1(.d0(d),.d1(~c),.s(c),.out_mux(o1));
  mux mux2(.d0(1'b1),.d1(1'b0),.s(o1),.out_mux(o2));
  mux mux3(.d0(1'b0),.d1(o2),.s(o6),.out_mux(o3));
  mux mux4(.d0(o5),.d1(1'b1),.s(o3),.out_mux(sum));
  mux mux5(.d0(1'b0),.d1(b),.s(a),.out_mux(o4));
  mux mux6(.d0(1'b0),.d1(o4),.s(o1),.out_mux(o5));
  mux mux7(.d0(b),.d1(1'b1),.s(a),.out_mux(o6));
  mux mux8(.d0(d),.d1(1'b1),.s(c),.out_mux(carry));
endmodule
