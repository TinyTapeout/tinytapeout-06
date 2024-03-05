`default_nettype none

// just a stub to keep the Tiny Tapeout tools happy

module tt_um_analog_loopback (
    input  wire       VGND,
    input  wire       VPWR,
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    inout  wire [7:0] ua, // analog pins
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

    wire tie_low;
    // must have at least once cell in the verilog or netgen has a problem
    sky130_fd_sc_hd__conb_1 sky130_fd_sc_hd__conb_1 (
        .VGND(VGND),
        .VNB (VGND),
        .VPB (VPWR),
        .VPWR(VPWR),
        .LO  (tie_low)
    );

    // all ports have to be assigned individually or netgen has a problem
    assign uo_out[0] = tie_low;
    assign uo_out[1] = tie_low;
    assign uo_out[2] = tie_low;
    assign uo_out[3] = tie_low;
    assign uo_out[4] = tie_low;
    assign uo_out[5] = tie_low;
    assign uo_out[6] = tie_low;
    assign uo_out[7] = tie_low;

    assign uio_out[0] = tie_low;
    assign uio_out[1] = tie_low;
    assign uio_out[2] = tie_low;
    assign uio_out[3] = tie_low;
    assign uio_out[4] = tie_low;
    assign uio_out[5] = tie_low;
    assign uio_out[6] = tie_low;
    assign uio_out[7] = tie_low;

    assign uio_oe[0] = tie_low;
    assign uio_oe[1] = tie_low;
    assign uio_oe[2] = tie_low;
    assign uio_oe[3] = tie_low;
    assign uio_oe[4] = tie_low;
    assign uio_oe[5] = tie_low;
    assign uio_oe[6] = tie_low;
    assign uio_oe[7] = tie_low;
    
    // the loopback
    assign ua[1] = ua[0];
    assign ua[3] = ua[2];
    assign ua[5] = ua[4];
    assign ua[7] = ua[6];
    
endmodule
