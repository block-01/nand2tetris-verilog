module and_gate (a, b, c);

    input a; // Input a
    input b; // Input b

    output wire c; // Output of a&b

    /* 
    And gate implementation.
    */

    assign c = a&b;

endmodule
