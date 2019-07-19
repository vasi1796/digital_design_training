module hazard(in, out);
input in;
output out;
reg out,not_in;

always @(in or not_in)
begin
out <= in&not_in;
not_in <= ~in;
end
endmodule