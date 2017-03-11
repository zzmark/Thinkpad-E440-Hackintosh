#DSDT修改记录

提取工具：Ubuntu

提取版本：BIOS 2.27

版本：17-2-18
##使用补丁：
####DSDT:
Remove _DSM

Rename PCI0.VID to PCI0.IGPU

Rename B0D3 to HDAU  (ID=12)

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

Rename B0D3 to HDAU  (ID=12)

手动修改device名称

###备选补丁：
HPET Fix 修正因HPET唤醒睡眠

##HDMI：
参考教程：[\[Guide\] Intel IGPU HDMI/DP audio](https://www.tonymacx86.com/threads/guide-intel-igpu-hdmi-dp-audio-sandy-ivy-haswell-broadwell-skylake.189495/)

若接上HDMI黑屏，可参照该教程

查明缓冲区参数是0105还是0204（IOReg中查看Framebuffer@几的属性，一般第一个是内置显示器，第二个是外置接口）然后使用Clover打上相应补丁（补丁参照Rehabman的Github中的文件）

该补丁修复了接口状态问题，若接口本来就是DP（0x00400000)则不需要这个补丁

##屏蔽独显：
参考教程：[https://www.firewolf.science/2015/05/%E5%B1%8F%E8%94%BD%E5%8F%8C%E6%98%BE%E5%8D%A1%E7%AC%94%E8%AE%B0%E6%9C%AC%E7%9A%84%E7%8B%AC%E6%98%BE/](https://www.firewolf.science/2015/05/%E5%B1%8F%E8%94%BD%E5%8F%8C%E6%98%BE%E5%8D%A1%E7%AC%94%E8%AE%B0%E6%9C%AC%E7%9A%84%E7%8B%AC%E6%98%BE/)

关闭独显Method：GPOF
\_SB.PCI0.PEG.VID.OMPR = 0x03
\_SB.PCI0.PEG.VID._PS3()
几个和独显切换相关的Method：
NBCI、NVOP（NV OPTIMUS DSM)、NVPS（NV GPS DSM）

将关闭两行放在_WAK的return前，使用调用_PS3电源状态

开启放在_PTS最前，即开始睡眠时打开显卡，调用_PS0电源状态

## 待解决


#### 唤醒后风扇狂转

修改：

删除GPOF中

	While ((\LCHK (0x00) == 0x00))
	{
		Stall (0x64)
	}


链路分析：

_PS3电源状态：=》调用GPOF：=》ISOP=》判断(VDSP && (VIGD && VDSC))三个寄存器状态{

VDSP，默认为1，根级寄存器，没有赋值，功能不明

VIGD，默认值1，根级寄存器，没有赋值，与EC相关，与两个显卡相关，疑似有其他的可以改这个值

VDSC，默认值1，根级寄存器，没有赋值，就用过这一次
}

=》
{
	\_SB.PCI0.PEG.VID.OMPR == 0x03  判断该值
=》
修改D80P=0x33 该寄存器在EC中随处可见

#### 关机变重启
~~方案1：DSDT USB名称从BHC1改成EH01-失败~~

方案2：主板上，不要让从网卡唤醒—成功

~~方案3：Clover打FixShutdown补丁-失败~~

~~方案4：DSDT Shutdown补丁 - 不支持~~

方案5：删了网卡驱动