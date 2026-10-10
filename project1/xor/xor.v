module nand_gate (a, b, c);

    input a; // Input a
    input b; // Input b

    output c; // Output of a~&b

    /* Nand gate implementation.
    */
    reg c;

    assign c = a~&b;

endmodule
