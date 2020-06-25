module full_adder(A, B, c_in, sum, c_out);
    input A, B, c_in;
    output sum, c_out;
    
    assign {c_out, sum} = A + B + c_in;
endmodule