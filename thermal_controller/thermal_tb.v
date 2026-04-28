module thermal_tb;
reg clk_in;
reg reset;
reg[1:0]temp_flag;
reg sys_enable;
wire clk_out;
thermal_controller uut(
                       .clk_in(clk_in),
                       .reset(reset),
                       .sys_enable(sys_enable),
                       .temp_flag(temp_flag),
                       .clk_out(clk_out));
always #5 clk_in=~clk_in;
initial
begin
$dumpfile("thermal.vcd");
$dumpvars(0,thermal_tb);
clk_in=0;reset=1;
temp_flag=2'b00;
sys_enable=1;
#15 reset=1;
#20;
temp_flag=2'b01;
sys_enable=0;
#20
sys_enable=1;
#20;
temp_flag=2'b10;
#50;
temp_flag=2'b11;
#30;
temp_flag=2'b00;
#40
$finish;
end
endmodule


                       
                       
