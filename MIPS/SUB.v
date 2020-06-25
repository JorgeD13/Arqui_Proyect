module SUB(A, B, c_in, SUM, c_out);
    input [31:0] A, B;
    input c_in;
    output [31:0] SUM;
    output c_out;

    wire [31:0] B_aux;
    assign B_aux = -B;

    full_adder fa32(A[31], B_aux[31], c30, SUM[31], c_out);
    full_adder fa31(A[30], B_aux[30], c29, SUM[30], c30);
    full_adder fa30(A[29], B_aux[29], c28, SUM[29], c29);
    full_adder fa29(A[28], B_aux[28], c27, SUM[28], c28);
    full_adder fa28(A[27], B_aux[27], c26, SUM[27], c27);
    full_adder fa27(A[26], B_aux[26], c25, SUM[26], c26);
    full_adder fa26(A[25], B_aux[25], c24, SUM[25], c25);
    full_adder fa25(A[24], B_aux[24], c23, SUM[24], c24);
    full_adder fa24(A[23], B_aux[23], c22, SUM[23], c23);
    full_adder fa23(A[22], B_aux[22], c21, SUM[22], c22);
    full_adder fa22(A[21], B_aux[21], c20, SUM[21], c21);
    full_adder fa21(A[20], B_aux[20], c19, SUM[20], c20);
    full_adder fa20(A[19], B_aux[19], c18, SUM[19], c19);
    full_adder fa19(A[18], B_aux[18], c17, SUM[18], c18);
    full_adder fa18(A[17], B_aux[17], c16, SUM[17], c17);
    full_adder fa17(A[16], B_aux[16], c15, SUM[16], c16);
    full_adder fa16(A[15], B_aux[15], c14, SUM[15], c15);
    full_adder fa15(A[14], B_aux[14], c13, SUM[14], c14);
    full_adder fa14(A[13], B_aux[13], c12, SUM[13], c13);
    full_adder fa13(A[12], B_aux[12], c11, SUM[12], c12);
    full_adder fa12(A[11], B_aux[11], c10, SUM[11], c11);
    full_adder fa11(A[10], B_aux[10], c9, SUM[10], c10);
    full_adder fa10(A[9], B_aux[9], c8, SUM[9], c9);
    full_adder fa9(A[8], B_aux[8], c7, SUM[8], c8);
    full_adder fa8(A[7], B_aux[7], c6, SUM[7], c7);
    full_adder fa7(A[6], B_aux[6], c5, SUM[6], c6);
    full_adder fa6(A[5], B_aux[5], c4, SUM[5], c5);
    full_adder fa5(A[4], B_aux[4], c3, SUM[4], c4);
    full_adder fa4(A[3], B_aux[3], c2, SUM[3], c3);
    full_adder fa3(A[2], B_aux[2], c1, SUM[2], c2);
    full_adder fa2(A[1], B_aux[1], c0, SUM[1], c1);
    full_adder fa1(A[0], B_aux[0], c_in, SUM[0], c0);
    
endmodule