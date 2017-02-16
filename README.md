# openMixR 4k Mixed Reality Headset

openMixR is an open software/hardware mixed reality headset powered by an Artix-7 FPGA. It combines a high-resolution (4k) virtual reality headset with
4k cameras and a powerful FPGA to provide augmented reality experiences.

## Current Status

Last year as a university group project a low resolution prototype was built, capable of demos
including a 2D Minecraft game and overlaying content from an HDMI input.

PCB design for revision 1 of the 4k version - which this repo is for - has been finished and
boards are in the process of being ordered. FPGA HDL for the cameras has been developed and tested (albeit
  with a different camera model only capable of 4k30, see [this repo](https://github.com/daveshah1/CSI2Rx)), and HDL for basic LCD functionality has been written
but not yet tested. To run the display at 4k will require feeding it with VESA DSC compressed video; code for
this is far from complete so I will be using the display at first in a mode where it upscales from 1080p - which
still looks a lot nicer than a native 1080p LCD.

I am also working on a custom HLS tool, not yet released, that will be used to create much of the FPGA processing
code that runs on the headset. An early version of this was used for the aforementioned low res demos.

## Hardware Features

The main components of the hardware are:

 - 4k LCD repurposed from Z5 premium (AUO H546UAN01.0 or unknown Sharp part) on a subassembly allowing different LCDs to be used in the future
 - Dual OV16825 cameras, also on a subassembly so other cameras - in particular I am looking into the Sony IMX318 - could be used
 - Artix-7 FPGA (currently XC7A200T-3FBG484E but cheaper variants could be used)
 - Allwinner A64 quad-core ARM applications processor (with basic GPU for 3D rendering)
 - WiFi and Bluetooth
 - USB-C for power, data and DisplayPort video

A rendering of the mainboard PCB is below

![Mainboard Render](https://ds0.me/ar/mainboard-render-sm.jpg)
