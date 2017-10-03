
// file: dsi_pll.v
// 
// (c) Copyright 2008 - 2013 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
//----------------------------------------------------------------------------
// User entered comments
//----------------------------------------------------------------------------
// None
//
//----------------------------------------------------------------------------
//  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
//   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// hs_word_clock____30.000______0.000______50.0______228.043____196.976
// hs_bit_clock___120.000______0.000______50.0______171.432____196.976
// hs_out_clock___120.000_____90.000______50.0______171.432____196.976
// ls_2xbit_clock____15.000______0.000______50.0______259.039____196.976
//
//----------------------------------------------------------------------------
// Input Clock   Freq (MHz)    Input Jitter (UI)
//----------------------------------------------------------------------------
// __primary_____________200____________0.010

`timescale 1ps/1ps

module dsi_pll_clk_wiz 

 (// Clock in ports
  // Clock out ports
  output        hs_word_clock,
  output        hs_bit_clock,
  output        hs_out_clock,
  output        ls_2xbit_clock,
  input         clkin
 );
  // Input buffering
  //------------------------------------
wire clkin_dsi_pll;
wire clk_in2_dsi_pll;
  BUFG clkin1_bufg
   (.O (clkin_dsi_pll),
    .I (clkin));


  // Clocking PRIMITIVE
  //------------------------------------

  // Instantiation of the MMCM PRIMITIVE
  //    * Unused inputs are tied off
  //    * Unused outputs are labeled unused

  wire        hs_word_clock_dsi_pll;
  wire        hs_bit_clock_dsi_pll;
  wire        hs_out_clock_dsi_pll;
  wire        ls_2xbit_clock_dsi_pll;
  wire        clk_out5_dsi_pll;
  wire        clk_out6_dsi_pll;
  wire        clk_out7_dsi_pll;

  wire [15:0] do_unused;
  wire        drdy_unused;
  wire        psdone_unused;
  wire        locked_int;
  wire        clkfbout_dsi_pll;
  wire        clkfbout_buf_dsi_pll;
  wire        clkfboutb_unused;
    wire clkout0b_unused;
   wire clkout1b_unused;
   wire clkout2b_unused;
   wire clkout3b_unused;
   wire clkout4_unused;
  wire        clkout5_unused;
  wire        clkout6_unused;
  wire        clkfbstopped_unused;
  wire        clkinstopped_unused;

  MMCME2_ADV
  #(.BANDWIDTH            ("OPTIMIZED"),
    .CLKOUT4_CASCADE      ("FALSE"),
    .COMPENSATION         ("ZHOLD"),
    .STARTUP_WAIT         ("FALSE"),
    .DIVCLK_DIVIDE        (5),
    .CLKFBOUT_MULT_F      (24.000),
    .CLKFBOUT_PHASE       (0.000),
    .CLKFBOUT_USE_FINE_PS ("FALSE"),
    .CLKOUT0_DIVIDE_F     (32.000),
    .CLKOUT0_PHASE        (0.000),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .CLKOUT0_USE_FINE_PS  ("FALSE"),
    .CLKOUT1_DIVIDE       (8),
    .CLKOUT1_PHASE        (0.000),
    .CLKOUT1_DUTY_CYCLE   (0.500),
    .CLKOUT1_USE_FINE_PS  ("FALSE"),
    .CLKOUT2_DIVIDE       (8),
    .CLKOUT2_PHASE        (90.000),
    .CLKOUT2_DUTY_CYCLE   (0.500),
    .CLKOUT2_USE_FINE_PS  ("FALSE"),
    .CLKOUT3_DIVIDE       (64),
    .CLKOUT3_PHASE        (0.000),
    .CLKOUT3_DUTY_CYCLE   (0.500),
    .CLKOUT3_USE_FINE_PS  ("FALSE"),
    .CLKIN1_PERIOD        (5.0))
  mmcm_adv_inst
    // Output clocks
   (
    .CLKFBOUT            (clkfbout_dsi_pll),
    .CLKFBOUTB           (clkfboutb_unused),
    .CLKOUT0             (hs_word_clock_dsi_pll),
    .CLKOUT0B            (clkout0b_unused),
    .CLKOUT1             (hs_bit_clock_dsi_pll),
    .CLKOUT1B            (clkout1b_unused),
    .CLKOUT2             (hs_out_clock_dsi_pll),
    .CLKOUT2B            (clkout2b_unused),
    .CLKOUT3             (ls_2xbit_clock_dsi_pll),
    .CLKOUT3B            (clkout3b_unused),
    .CLKOUT4             (clkout4_unused),
    .CLKOUT5             (clkout5_unused),
    .CLKOUT6             (clkout6_unused),
     // Input clock control
    .CLKFBIN             (clkfbout_buf_dsi_pll),
    .CLKIN1              (clkin_dsi_pll),
    .CLKIN2              (1'b0),
     // Tied to always select the primary input clock
    .CLKINSEL            (1'b1),
    // Ports for dynamic reconfiguration
    .DADDR               (7'h0),
    .DCLK                (1'b0),
    .DEN                 (1'b0),
    .DI                  (16'h0),
    .DO                  (do_unused),
    .DRDY                (drdy_unused),
    .DWE                 (1'b0),
    // Ports for dynamic phase shift
    .PSCLK               (1'b0),
    .PSEN                (1'b0),
    .PSINCDEC            (1'b0),
    .PSDONE              (psdone_unused),
    // Other control and status signals
    .LOCKED              (locked_int),
    .CLKINSTOPPED        (clkinstopped_unused),
    .CLKFBSTOPPED        (clkfbstopped_unused),
    .PWRDWN              (1'b0),
    .RST                 (1'b0));

// Clock Monitor clock assigning
//--------------------------------------
 // Output buffering
  //-----------------------------------

  BUFG clkf_buf
   (.O (clkfbout_buf_dsi_pll),
    .I (clkfbout_dsi_pll));



  BUFG clkout1_buf
   (.O   (hs_word_clock),
    .I   (hs_word_clock_dsi_pll));


  BUFG clkout2_buf
   (.O   (hs_bit_clock),
    .I   (hs_bit_clock_dsi_pll));

  BUFG clkout3_buf
   (.O   (hs_out_clock),
    .I   (hs_out_clock_dsi_pll));

  BUFG clkout4_buf
   (.O   (ls_2xbit_clock),
    .I   (ls_2xbit_clock_dsi_pll));



endmodule
