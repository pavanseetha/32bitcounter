module updowntb();
reg clk,rst,ud,en;
wire [2:0] count;

updown d1(.clk(clk),.rst(rst),.en(en),.ud(ud),.count(count));

always #5 clk=~clk;

initial
begin
clk<=1'b0;
rst<=1;
en<=0;
end

initial
begin
#10; ud=1; rst=0; en=1;
#320; ud=0; rst=0; en=1;

 end

initial
$monitor($time,"en=%b",en,"rst= %b",rst,"ud=%b",ud,"count= %d",count);
endmodule
