module and16_gate(a, b, c);
    input [15:0] a;
    input [15:0] b;
    output wire [15:0] c;


    and_gate_mod(a[15:0], b[15:0], c[15:0]);
    and_gate_mod(a[15:1], b[15:1], c[15:1]);
    and_gate_mod(a[15:2], b[15:2], c[15:2]);
    and_gate_mod(a[15:3], b[15:3], c[15:3]);
    and_gate_mod(a[15:4], b[15:4], c[15:4]);
    and_gate_mod(a[15:5], b[15:5], c[15:5]);
    and_gate_mod(a[15:6], b[15:6], c[15:6]);
    and_gate_mod(a[15:7], b[15:7], c[15:7]);
    and_gate_mod(a[15:8], b[15:8], c[15:8]);
    and_gate_mod(a[15:9], b[15:9], c[15:9]);
    and_gate_mod(a[15:10], b[15:10], c[15:10]);
    and_gate_mod(a[15:11], b[15:11], c[15:11]);
    and_gate_mod(a[15:12], b[15:12], c[15:12]);
    and_gate_mod(a[15:13], b[15:13], c[15:13]);
    and_gate_mod(a[15:14], b[15:14], c[15:14]);
    and_gate_mod(a[15:15], b[15:15], c[15:15]);

endmodule

module and_gate_mod (a, b, c);

    input a; // Input a
    input b; // Input b

    output wire c; // Output of a&b

    /* 
    And gate implementation.
    */

    assign c = a&b;

endmodule
