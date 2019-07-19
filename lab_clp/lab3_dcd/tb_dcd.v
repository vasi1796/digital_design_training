module tb_dcd(in,enable);
parameter per = 5;
output [2:0] in;
output enable;

reg[3:0] counter;
reg clk;

initial
begin 
    clk=0;
    counter = 0;
end
always @(posedge clk)
begin 
    if(counter == {4{1'b1}})
        begin
	$stop;
	end
    else
    	begin
	    counter=counter+1;
	end
end

assign in[0]=counter[0];
assign in[1]=counter[1];
assign in[2]=counter[2];
assign enable=counter[3];

always
#per clk=~clk;
endmodule