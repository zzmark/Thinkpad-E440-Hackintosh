Thinkpad E440 Hackintosh Files
===
## ReadMe
This is related to OS X repositories.

Only support Lenovo Thinkpad E440 20C5A08ECD.

Other models are not applicable.

This repositories contains:

* battary-patch
* Clover-config
* kext-list
* DSDT-compiled

## Overview
**Working**

- Intel HD4600 Graphic
- Brightness to Shortcut
- HDMI support (But HDMI audio can not use)
- Disabled NVIDA Geforce graphic card under DSDT
- CONEXANT CX20751/2 Audio Use AppleALC
- Cabel Network Support
- TouchPad and Keyboard: VoodooPS2Controller
	* modified keyboard:F1 F2 F3 => Mute Volume- Volume+
	* Closer keystroke marking
- SpeedStepping
- Sleep(not integrated)
- USB(not best)

**Not Working**

- internal WIFI cark: RTL8723 not solution
- USB not integrated: Shutdown change to restart
- Sleep:More than 2 hours will be black screen
- HDMI Audio not working


## Releases
**[Click to Download Releases](https://github.com/ZzMark/Thinkpad-E440-Hackintosh/releases)**

**Versions:**

- 2017-02-18：Initial version
	* Realized some moudle include graphic, audio, cable network, keyboard and touchpad
	* Disable Discrete Graphics on DSDT
	* HDMI support (But HDMI audio can not use)
	* Keyboard adjustment(Reference to document)
	* Sleep support(More than 2 hours will be black screen)

## How to use it

Download this and according to Clover boot.

## Feedback

If you have any question, Plese do not hesitate to contact me by using the issue function.

## thanks to

Clover Team

RehabMan

pcbeta forum's users

and more OS X hacker

##License
The source code is released under [GPL v3](http://www.gnu.org/copyleft/gpl.html) or (at your option) any later version.