module or_gate (a, b, c);

    input a; // Input a
    input b; // Input b

    output wire c; // Output of a|b

    /* 
    or gate implementation.
    */

    assign c = a|b;

endmodule
