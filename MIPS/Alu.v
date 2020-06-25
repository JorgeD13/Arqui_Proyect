module alu(a, b, f, y, zero);
    input [31:0] a, b;
    input [3:0] f;
    output [31:0] y;
    output zero;

    parameter z=32'b0;

    wire c_out;  //Aun no se usa pero ya está implementado en la Arithmetic_unit
    wire [31:0] result1, result2;

    Arithmetic_unit Au (a, b, f, result1, c_out);

    LogicPart LP (f, a, b, result2);

    assign y = (f[3]) ? result1 : (f[2] ? result2 : result1);

    assign zero = (y == z) ? 1 : 0;

endmodule