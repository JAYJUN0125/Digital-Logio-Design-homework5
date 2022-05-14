`timescale 1ns/1ps
    module HW5_tb;
reg clk_tb;
reg Load;
reg Din;

initial
begin
    clk_tb = 0;
    Din=4;
    Load=1'b0;
end


always
begin
    #10 clk_tb = ~clk_tb;
end

initial
begin
    #30 Load = 1'b0;
    #80 Load = 1'b1;
    #5 Load = 1'b0;
    #250 $finish;
end

initial
begin
    $dumpfile("HW5.vcd");
    $dumpvars(0, HW5_tb);
end

HW5 HW5_tb (
        .clk(clk_tb),
        .Load(Load)
    );
endmodule
