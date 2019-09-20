# HDMI实现

## 现状

HDMI识别显示器，识别分辨率，无图像

HDMI音频无法识别

[guide-intel-igpu-hdmi-dp-audio-sandy-ivy-haswell-broadwell-skylake](https://www.tonymacx86.com/threads/guide-intel-igpu-hdmi-dp-audio-sandy-ivy-haswell-broadwell-skylake.189495/)

指出需要修改`ig-platform-id`和打入相应补丁

当前ig为 `0x0a 26 00 06`

@1和@2缓冲状态为`0105 0204`

`audio-device-info`值

`AppleIntelFramebuffer`中指出，本机有三个缓冲区

@0为内置显示器，@1为HDMI，@2应为VGI（无数据证实）。
0x00 0x05 0x06

## 处理日志

启用`config.plist`中的`HDMI-audio, port 0105(12), 0x0a260005 0x0a260006, 0x0d220003, 0x0a2e000a, 0x0a26000a-02`补丁,视频已可以使用，音频仍在排查，应该是DSDT中HDAU相关补丁错误导致