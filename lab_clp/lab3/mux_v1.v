module mux_v1 (i0,i1,sel,out);
input i0,i1,sel;
output out;
assign out = (i0&(~sel)) | (sel & i1);

endmodule
