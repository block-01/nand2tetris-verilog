module nand_gate (a, b, c);

    input a; // Input a
    input b; // Input b

    output wire c; // Output of a!&b

    /* 
    Nand gate implementation.
    */

    assign c2 = a & b;
    assign c = !c2;

endmodule
