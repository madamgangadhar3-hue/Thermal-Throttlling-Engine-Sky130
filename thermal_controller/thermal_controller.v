module thermal_controller(
                      input clk_in,
                      input reset,
                      input [1:0]temp_flag,
                      input sys_enable,
                      output reg clk_out);
wire clk_div2;
clk_divider u_div(
                .clk_in(clk_in),
                .reset(reset),
                .clk_div2(clk_div2));
always @(*)
begin
case(temp_flag)
2'b00:clk_out=clk_in;
2'b01:clk_out=clk_in & sys_enable;
2'b10:clk_out=clk_div2;
2'b11:clk_out=1'b0;
default:clk_out=clk_in;
endcase
end
endmodule

                      
                        
                   
