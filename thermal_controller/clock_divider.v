module clk_divider(
                    input clk_in,
                    input reset,
                    output reg clk_div2);
always @(posedge clk_in or posedge reset)
begin
if(reset)
begin
clk_div2=1'b0;
end
else
begin
clk_div2=~clk_div2;
end
end
endmodule

               
