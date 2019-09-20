# Thinkpad E440 Hackintosh Files

## ReadMe

本仓库用于 Lenovo Thinkpad E440 20C5A08ECD 型号笔记本电脑

内容均为自用，仅保证同型号可用，据网友反馈 E440 系列 GT840m 显卡的型号、CPU 为 i5、i7 均可使用没有出现大问题

据网友测试，E440 740m显卡也有可用型号，E540也有型号可以使用，但没有 i3 成功的消息。

仓库包含：

* 电池补丁 battary-patch
* Clover 相关所有内容
* 使用的驱动列表和版本
* 原始 DSDT

## Overview

**Working**

* Intel HD4600 Graphic
* HDMI
* 独显屏蔽
* 有线网卡
* 电源管理和变频
* 睡眠支持
* USB 3.0 和摄像头

**Not Working**

* 内置无线网卡: RTL8723 无解
* HDMI 音频暂且无法使用
* 声卡 CONEXANT CX20751/2 (使用 Lilu + AppleALC 认不到设备)

## Releases

**[下载链接](https://github.com/ZzMark/Thinkpad-E440-Hackintosh/releases)**

## changelog

**Versions:**

* 2019-09-20:
  - update to 10.14.5(Mojave)
  - update Clover to r5070;
  - update all kext and update all driver
  - Upgrade to the new graphics driver methods
  - remove to SD Card Reader(driver norenew)

* 2017-03-11:
  * Fix Shutdown starts up again(Need change BIOS setting)
  * Add SD Card reader driver thnx [Sinetek](http://www.insanelymac.com/forum/topic/321080-sineteks-driver-for-realtek-rtsx-sdhc-card-readers/)(RTS5227 ID: 0x522710ec)
  * Updata Clover to 4012

* 2017-02-18:Initial version
  * Realized some moudle include graphic, audio, cable network, keyboard and touchpad
  * Disable Discrete Graphics on DSDT
  * HDMI support (But HDMI audio can not use)
  * Keyboard adjustment(Reference to document)
  * Sleep support(More than 2 hours will be black screen)

## 关机后自动启动问题

这个问题我没有彻底解决

关掉 Network Wake 设置、不使用网线、关机前拔掉所有 USB 设备、关机前断开电源适配器，基本没有出现过该问题(20次还是会有一次自动开机)

最近更新到最新的 RTL8111 驱动，插着网线、USB、电源适配器也很少出现该问题(20次会有一次的程度)，基本不会影响到使用，也不想再追查下去了。

## Feedback

If you have any question, Plese do not hesitate to contact me by using the issue function.

## thanks to

Clover Team

RehabMan

Sinetek

pcbeta 论坛的各路水友们

全世界为 Hackintosh 奋斗的 程序员/黑客 们

## License

本项目使用 [GPL v3](http://www.gnu.org/copyleft/gpl.html) 协议，如需使用请遵照协议。
