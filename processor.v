module processor(
    input clk,
    input reset,
    input [3:0] instruction,
    output reg [3:0] acc
);

reg [3:0] regA;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        acc <= 4'b0000;
        regA <= 4'b0001;
    end

    else
    begin
        case(instruction)

            4'b0001: acc <= acc + 1;      // INC
            4'b0010: acc <= acc - 1;      // DEC
            4'b0011: acc <= acc + regA;   // ADD
            4'b0100: acc <= acc & regA;   // AND

            default: acc <= acc;

        endcase
    end
end

endmodule
