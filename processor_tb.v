`timescale 1ns/1ps

module processor_tb;

reg clk;
reg reset;
reg [3:0] instruction;
wire [3:0] acc;

processor uut(
    .clk(clk),
    .reset(reset),
    .instruction(instruction),
    .acc(acc)
);

// clock generation
always #5 clk = ~clk;

initial begin

    // waveform generation
    $dumpfile("dump.vcd");
    $dumpvars(0, processor_tb);

    clk = 0;
    reset = 1;
    instruction = 4'b0000;

    #10 reset = 0;

    #10 instruction = 4'b0001; // INC
    #10 instruction = 4'b0001; // INC
    #10 instruction = 4'b0010; // DEC
    #10 instruction = 4'b0001; // INC

    #20 $finish;

end

endmodule
