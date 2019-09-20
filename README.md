# Thinkpad E440 Hackintosh Files

English | [中文](./README-zh.md)

## ReadMe

This is related to OS X repositories.

Only support Lenovo Thinkpad E440 20C5A08ECD.

Other models are not applicable.

This repositories contains:

* battary-patch
* Clover-config
* kext-list
* DSDT-source

## Overview

**Working**

* Intel HD4600 Graphic
* Brightness to Shortcut
* HDMI support (But HDMI audio can not use)
* Disabled NVIDA Geforce graphic card under DSDT
* Cabel Network Support
* SpeedStepping
* Sleep
* USB

**Not Working**

* internal WIFI cark: RTL8723 not solution
* USB not integrated: Shutdown change to restart
* HDMI Audio not working
* CONEXANT CX20751/2 Audio (not work to use AppleALC)
* USB 3.0(just a few problems)

## Releases

**[Click to Download Releases](https://github.com/ZzMark/Thinkpad-E440-Hackintosh/releases)**

**Versions:**

* 2019-09-20:
  - update to 10.14.5(Mojave)
  - update Clover to r5070;
  - update all kext and update all driver
  - Upgrade to the new graphics driver methods
  - remove to SD Card Reader(driver norenew)

* 2017-03-11:
  * Fix Shutdown starts up again(Need change BIOS setting)
  * Add SD Card reader driver thnx[Sinetek](http://www.insanelymac.com/forum/topic/321080-sineteks-driver-for-realtek-rtsx-sdhc-card-readers/)(RTS5227 ID: 0x522710ec)
  * Updata Clover to 4012

* 2017-02-18:Initial version
  * Realized some moudle include graphic, audio, cable network, keyboard and touchpad
  * Disable Discrete Graphics on DSDT
  * HDMI support (But HDMI audio can not use)
  * Keyboard adjustment(Reference to document)
  * Sleep support(More than 2 hours will be black screen)

## How to fix Shutdown

Turn off about Network Wake setting in BIOS

## How to use it

Download this and according to Clover boot.

## Feedback

If you have any question, Plese do not hesitate to contact me by using the issue function.

## thanks to

Clover Team

RehabMan

Sinetek

pcbeta forum's users

and more OS X hacker

## License

The source code is released under [GPL v3](http://www.gnu.org/copyleft/gpl.html) or (at your option) any later version.
