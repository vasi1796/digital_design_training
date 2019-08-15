module dff(cl,d,ck,q);
input cl,d,ck;
output q;
reg q;

always @(posedge ck,negedge cl)
begin
if(cl==0)
q=0;
else
q=d;
end
endmodule
