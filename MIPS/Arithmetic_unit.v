module Arithmetic_unit(input1, input2, AluOp, partial_output, c_out);
    input [31:0] input1, input2;
    input [3:0] AluOp;
    output [31:0] partial_output;
    output c_out;

    wire [31:0] out1, out2;
    wire c_out1, c_out2;
    reg c_in = 1'b0;
    
    ADD addition(input1, input2, c_in, out1, c_out1);
    SUB subtraction(input1, input2, c_in, out2, c_out2);
    
    assign partial_output = AluOp[1] ? out2 : out1;

    assign c_out = AluOp[1] ? c_out2 : c_out1;

endmodule