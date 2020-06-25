module PreLP(a, b, aluop, result);
        input a;
        input b;
        input [3:0] aluop;
        output result;

        assign result = (~a & ~b & aluop[2] & aluop[1] & aluop[0]) | (b & aluop[2] & ~aluop[1] & aluop[0]) | (~a & b & aluop[2] & aluop[1] & ~aluop[0]) | (a & aluop[2] & ~aluop[1] & aluop[0]) | (a & ~b & aluop[2] & aluop[1] & ~aluop[0]) | (a & b & aluop[2] & ~aluop[1]);

endmodule