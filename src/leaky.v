`default_nettype none

module leaky (
    input wire [7:0] current,
    input wire       clk,
    input wire       rst,
    output wire      spike,
    output reg [7:0] state
);

    reg [7:0] threshold;
    wire [7:0] next_state;

    always@(posedge clk)
    begin
        if (!rst)
        begin
            state <= 0;
            threshold <= 127;
        end
        else
        begin
            state <= next_state;
        end
    
        // next_state logic based on input current and degraded state
        assign next_state = current + (state >> 1);

        // spiking logic
        assign spike = (state >= threshold);

    end

endmodule

