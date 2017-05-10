# openMixR 4k Mixed Reality Headset

openMixR is an open software/hardware mixed reality headset powered by an Artix-7 FPGA. It combines a high-resolution (4k) virtual reality headset with
4k cameras and a powerful FPGA to provide augmented reality experiences.

## Current Status

Last year as a university group project a low resolution prototype was built, capable of demos
including a 2D Minecraft game and overlaying content from an HDMI input.

PCB design for revision 1 of the 4k version - which this repo is for - has been finished and PCBs have now arrived. FPGA HDL for the cameras has been developed and tested (albeit
  with a different camera model only capable of 4k30, see [this repo](https://github.com/daveshah1/CSI2Rx)), and HDL for basic LCD functionality has been written
and undergone basic testing. To run the display at 4k will require feeding it with VESA DSC compressed video; code for
this is far from complete so I will be using the display at first in a mode where it upscales from 1080p - which
still looks a lot nicer than a native 1080p LCD. Current LCD code is [here](https://github.com/daveshah1/DSITx).

I am now in the process of testing the PCBs and writing a simple AR demo using the LCD and cameras. At present no breaking
issues in the rev 1.0 PCB have arisen although do take note a few minor errata points - see the hardware folder.

I am also working on a custom HLS tool, not yet released, that will be used to create much of the FPGA processing
code that runs on the headset. An early version of this was used for the aforementioned low res demos.

## Hardware Features

The main components of the hardware are:

 - 4k LCD repurposed from Z5 premium (AUO H546UAN01.0 or unknown Sharp part) on a subassembly allowing different LCDs to be used in the future
 - Dual OV16825 cameras, also on a subassembly so other cameras - in particular I am looking into the Sony IMX318 - could be used
 - Artix-7 FPGA (currently XC7A200T-3FBG484E but cheaper variants could be used)
 - Allwinner A64 quad-core ARM applications processor (with basic GPU for 3D rendering)
 - 512MB of DDR3 attached to the FPGA and 1GB attached to the A64 processor
 - WiFi and Bluetooth
 - USB-C for power, data and DisplayPort video

A photo of the assembled mainboard PCB is below:

![Mainboard Photo](https://ds0.me/ar/mainboard-sm.jpg)
