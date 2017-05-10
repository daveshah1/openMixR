# Hardware Errata

## Revision 1.0
 - BOM line 13, R502,R506,R507,R1205,R1206 has the correct designation 240, this is also correct within KiCad,
however the description and MPN errneously refer to a 240kΩ resistor. These parts should be a 240Ω resistor (Yageo MPN RC0402FR-07240RL)
 - P703 is designated GPS and P702 is designated UART, and the signals connected to P702 titled "A64_DBG_TX" and "A64_DBG_RX". However please
note that with an unmodified bootloader and Linux configuration, debug messages will come out of the GPS connector.
 - Due to a significant inrush current, the board's UVP may prevent it from starting up when using a weak USB port or inadequate cable. As the
device may require significant operating current, using a sufficiently strong port (e.g. a phone charger, a USB3 port on the **back** of a desktop,
  or a genuine USB type-C port) with a good cable is always recommended. It may be possible to get the board to start on a weaker port by increasing
  C204 but this has not been tested.
 - The power switch only switches power to the FPGA subsystem, not the A64 subsystem (although arguably this could be exploited to "softly" shut down the A64),
  and does not control the power LED.
