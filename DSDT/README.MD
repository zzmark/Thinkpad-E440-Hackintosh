#DSDT修改记录

提取工具：Ubuntu

提取版本：BIOS 2.27
##使用补丁：
####DSDT:
Remove _DSM

Rename PCI0.VID to PCI0.IGPU

Rename B0D3 to HDAU  (ID=28)（HDMI音频注入点，不知道为什么）

Haswell HD4600 Yosemite

Brightness fix 

Haswell LPC(修改ID为8086:8c4b)

OS Check Fix（win8）

0x0D-USB3补丁

电池补丁

声卡注入（ID=28）

IRQ patch

####SSDT-4
Remove _PSS placeholder

####SSDT-5
删除，替换ss变频文件

####SSDT-6

Rename PCI0.VID to PCI0.IGPU

Rename B0D3 to HDAU  (ID=28)

手动修改device名称

###备选补丁：
7/8 USB补丁
HPET Fix 修正因HPET唤醒睡眠

##HDMI：
参考教程：[\[Guide\] Intel IGPU HDMI/DP audio](https://www.tonymacx86.com/threads/guide-intel-igpu-hdmi-dp-audio-sandy-ivy-haswell-broadwell-skylake.189495/)

若接上HDMI黑屏，可参照该教程

查明缓冲区参数是0105还是0204（IOReg中查看Framebuffer@几的属性，一般第一个是内置显示器，第二个是外置接口）然后使用Clover打上相应补丁（补丁参照Rehabman的Github中的文件）

该补丁修复了接口状态问题，若接口本来就是DP（0x00400000)则不需要这个补丁

*但至今HDMI音频无法使用，原因不明，待进一步更新*
