module samplecounter32(rst,clk,count);
input rst,clk;
output [31:0] count;
reg [31:0] count;
always@(posedge clk or posedge rst)
begin 
if(rst)
count=0;
else 
count=count+1;
end
endmodule

