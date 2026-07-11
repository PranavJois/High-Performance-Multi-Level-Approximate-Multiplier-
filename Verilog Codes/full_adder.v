module fa(input a,b,cin, output sum,carry);
  wire s1,c1,c2;
  ha ha1(.a(a),.b(b),.sum(s1),.cout(c1));
  ha ha2(.a(s1),.b(cin),.sum(sum),.cout(c2));
  assign carry = c1 | c2;
endmodule
