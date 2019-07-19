module test_sumator();
parameter per =5;

generator #(per) TB (.a(a),.b(b),.cin(cin));

sumator DUT (.a(a),.b(b),.cin(cin),.s(s),.cout(cout));

endmodule