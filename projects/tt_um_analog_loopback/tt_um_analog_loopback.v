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

    assign uo_out = VGND;
    assign uio_out = VGND;
    assign uio_oe = VGND;
    
    assign ua[1] = ua[0];
    assign ua[3] = ua[2];
    assign ua[5] = ua[4];
    assign ua[7] = ua[6];
    
endmodule
