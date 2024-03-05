module lab_5_tb;

    // Inputs
    logic a, b, c, d, x, y, z;

    // Outputs
    logic n0, n1, n2, n3, n4, n5, n6, n7, A, B, C, D, E, F, G;

    // Instantiate the module
    lab_5 dut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .x(x),
        .y(y),
        .z(z),
        .n0(n0),
        .n1(n1),
        .n2(n2),
        .n3(n3),
        .n4(n4),
        .n5(n5),
        .n6(n6),
        .n7(n7),
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .F(F),
        .G(G)
    );

    // Initial block for testbench
    initial begin
        // Loop through all possible combinations
        for (int i = 0; i < 8; i++) begin
            a = i[2];
            b = i[1];
            c = i[0];

            // Loop through all possible combinations for d, x, y, z
            for (int j = 0; j < 16; j++) begin
                d = j[3];
                x = j[2];
                y = j[1];
                z = j[0];

                #10; // Wait for a few time units

                // Display the inputs and outputs
                $display("Input: a=%b, b=%b, c=%b, d=%b, x=%b, y=%b, z=%b | Output: A=%b, B=%b, C=%b, D=%b, E=%b, F=%b, G=%b",
                         a, b, c, d, x, y, z, A, B, C, D, E, F, G);
            end
        end

        // Finish simulation
        $finish;
    end

endmodule
