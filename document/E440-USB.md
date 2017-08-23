# E440 USB问题解决记录

10.11时期，pcbeta上得一位大神给了我一个kext驱动，配合驱动给dsdt打一个补丁（实际是改了三个名字，当时不懂），然后摄像头就出来了。

前阵升级了10.12，升级后发现usb全家都出了问题，延用上一版本的usb，usb3.0可用但usb声卡爆音、usb网卡无法识别，用rehabman大神的UsbInjectAll的话usb3.0不能用，声卡不能用，深入研究发现了许多错误的使用方法。

首先贴上我的USB Map

|-Port-|-address-|-端口位置-|-对应DSDT-|
|:---:|:-----:|:----:|:---:|
|port1|0x01(1)|左下2.0|HSP0|
|port2|0x02(2)|左上2.0|HSP1|
|port6|0x06(6)|右方2.0|HSP5|
|port7|0x07(7)|蓝牙|HSP6|
|prot12|0x0c(12)|摄像头|HSPB|
|port17|0x11(17)|左下3.0|SSP1|
|port20|0x14(20)|左上3.0|SSP4|

这些数据可以从Windows下的[usbtreeview](http://www.uwe-sieber.de/files/usbtreeview.zip)软件中获取到

`Rehabman`的项目中，与USB相关的共有两个，一个是FakePCIID，另一个就是`UsbInjectAll`，其中FakePCIID中有一个`FakePCIID_XHCIMux.kext`，该文件的作用很特殊，下面会单独说明。

UsbInjectAll的工作原理类似于pjalm所提供的遮罩器（应该说是遮罩器的加强版）（这两个人的关系也不清楚，说法可能不精确），rehabman大神也推荐在一些特别情况下自制遮罩器，毕竟通用性不一定够。

修复USB驱动，首先需要知道以下几点

1. Intel 8/9/100系列的主板中，所有USB控制器全都分划到了XHCI中（usb3.0控制器，有的主板会叫做XHC或者XHC1），8系列主板3.0控制器下一般会有HSP0~HSPE（HS01~HS15)15个USB2.0和SSP0~SSP5（SS01~SS06）六个USB3.0控制器总计21个USB控制器。

1. 因为苹果对USB的规则改变，限制USB控制器数量为15，导致XHC控制器下只能显示到SSP0。这个数量限制可以由补丁去除，但是这个补丁在我这里不清楚是否有效（加不加都出不来）。

1. 苹果对USB的规则中还有一点，就是port和配置的对应关系由SMBIOS决定，即你所仿冒的机型是什么，你的USB数据便会继承下来，导致很多机型的USB失效，例如MBP11.1所使用的是HSP0、1、3、5，SSP0、1、4，摄像头就不见了。这一点大神提出了用inject遮罩器来解决，重新将端口映射，也曾有绕过这个限制的方法，即将USB控制器的名字改成与Mac默认的不同，使系统从DSDT中读取控制器节点数据，建立接口关系。

1. Macbook Pro 11.1 白苹果机，实际上只有USB3.0总线控制器显示，即遵循第一点将2.0设备放在3.0控制器下管理

1. 遮罩器的功能就是提供一套USB Map节点数据，供系统驱动USB。

1. FakePCIID_XHCIMux的功能：这个kext的功能非常坑爹，它的功能是将USB3.0控制器下USB2.0设备映射回EH01和EH02控制器中，相关说明很少，据本人猜测可能会有性能提升，也可能是为了避开15控制器数量限制。

最开始没有注意FakePCIID_XHCIMux这个kext，升级10.12前更新FakePCIID的时候一起带上了，结果导致了USB3.0的驱动失败却又不清楚哪里出了问题，去掉这个kext后USB3.0一下就好使了，说明这个映射在我的机器上可能存在某些问题。

后来进一步研究发现很多不完善的地方，最后决定自行制作遮罩器，使用pjalm提供的遮罩器为原本，添加了自己的节点数据。

参考资料：

* [http://bbs.pcbeta.com/viewthread-1723131-1-1.html](http://bbs.pcbeta.com/viewthread-1723131-1-1.html)
* [http://bbs.pcbeta.com/viewthread-1651615-1-3.html](http://bbs.pcbeta.com/viewthread-1651615-1-3.html)
* [http://bbs.pcbeta.com/viewthread-1647984-1-1.html](http://bbs.pcbeta.com/viewthread-1647984-1-1.html)
* [https://github.com/RehabMan/OS-X-USB-Inject-All](https://github.com/RehabMan/OS-X-USB-Inject-All)
* [https://github.com/RehabMan/OS-X-Fake-PCI-ID](https://github.com/RehabMan/OS-X-Fake-PCI-ID)