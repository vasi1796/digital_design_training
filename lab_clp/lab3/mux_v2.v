module mux_v2(i0,i1,sel,out);
input i0,i1,sel;
output out;
assign out = (sel)?i1:i0;

endmodule