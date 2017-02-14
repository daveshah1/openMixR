# Hardware for openMixR 1.0

All of the hardware is designed in KiCad, in the spirit of open source.

- *mainboard* is the headset mainboard, containing the FPGA and processor. It is a 150x90mm 8-layer board
with a minimum track/space of 4mil and a controlled impedance requirement.
- *camboard* is the OV16825 camera subassembly
- *lcdboard* is the Z5 Premium LCD subassembly
- *usbbase* is a board that combines power, USB 2.0 data and Displayport into a USB-C connection,
so openMixR can be used if your computer doesn't support USB-C.

In addition, all of the libraries needed are included. Schematic component libraries are inside the
board folders, with the exception  of *customconn* which is the custom LCD and camera connectors that
interconnect the mainboard and subassemblies. *parts.pretty* contains all of the custom footprints; and *3d*
contains 3D models for many of the components used (for the most part converted from the models provided by their vendors).

PDF schematics are included for all of the boards, if you don't want to install KiCad. Gerbers are also included for the mainboard,
which is the only board which I've ordered so far.
