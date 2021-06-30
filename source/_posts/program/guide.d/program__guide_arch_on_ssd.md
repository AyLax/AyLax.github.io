---
title: 论在ssd上安装 arch-linux 的正确姿势
date: 2021-06-01 06:00:00
updated: 2021-06-01 06:00:00
tags:
  - linux
categories: 
  - program
---

在逛论坛时, 偶然间看到了`win to go--将windows塞入u盘`，于是立刻萌生了做个随身携带的linux系统的想法。

<!-- more -->

> 资金投入

刚开始想的是装在u盘上，后来转念一想，为啥不直接装在ssd上呢? 京东上一查，
500g的ssd只要490元，对比往昔，只想说一个字，酷! 立马下单买了 Kingston-M.2-SSD-500G。

当然了， 直接带根内存条走来走去，也太奇怪了。又在京东上给它找了件时尚大衣，全铝外置M.2NvMe移动硬盘盒。给它穿上了这件银色风衣后，颜值瞬间上了好几个档次。

> 发行版选择

接下来，就是 考虑将 linux 装进这个小东西里了。

众多的linux发行版里，我选择了 arch-linux, 无他，唯系统简洁，社区友好。

安装步骤和平时的安装方式 [步骤参考👉](https://github.com/aylax/dothub.d/blob/master/data.d/Bash/arch.ins) 几乎一致。只有一点小小的不同


```bash
grub-install --target=x86_64-efi \
--removable --efi-directory=/boot/EFI \
--bootloader-id=grub

chmod -x /etc/grub.d/30_os-proper

grub-mkconfig -o /boot/grub/grub.cfg
```

如果你是使用grub引导，并且是uefi模式的，安装在外置硬盘上时，需要在grub-install 里
多加个 `--removeable` 参数表明这个盘是独立的，不需要其它盘协作。同时去除文件
`30_os-proper`的可执行权限, 表明不需要将其他盘的ESP扫描结果写入`grub.cfg`文件中

上面这个也是经验之谈，之前好几次次拔下外置盘后，都要重新挂载，修复grub引导，差点以为是我的盘出问题了🤣🤣🤣 


介绍就到此为止了，我手中的ssd现在已经是个酷酷的高达了。
