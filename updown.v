module updown(clk,rst,ud,en,count);
input clk,rst,ud,en;
output reg [2:0] count;

always@(posedge clk)
begin
if(rst)
count<=0;
else
if(en)
begin
if(ud)
count<=count+1;
else
count<=count-1;
end
end
endmodule
