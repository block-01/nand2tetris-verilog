module not_gate(a, b);

    input a; // Input a

    output wire b; // output of not a
    
    /* 
    not gate implementation.
    */

    assign b = !a;

endmodule