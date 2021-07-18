---
title: 常用的linux命令
date: 2021-06-08 06:00:00
updated: 2021-06-08 06:00:00
tags:
  - linux
categories: 
  - program
---

记录了在我比较常用的linux命令.

<!-- more -->


## commands


### cp

```bash
# cp: 复制文件或目录
# cp [options] src dst
cp -r src dst # 将src目录下内容递归复制到dst
cp -a src dst # 复制时保留 链接, 文件属性
cp -f scr dst # 覆盖已存在文件时不做提示
cp -i scr dst # 覆盖已存在文件时作出提示

```

### scp

```bash
# scp: scurity copy, 远程拷贝
# options:
## -p: 保留原文件的修改时间, 访问时间和访问权限。
## -r: 递归复制整个目录。
## -P: 指定端口号

# 本地复制到远程
scp -r /home/path uname@ip:/home/path

# 远程复制到本地
scp -r uname@ip:/home/path /home/path

```


### tar

```bash
# tar: tape archive, 归档
# tar [-ABcdgGhiklmMoOpPrRsStuUvwWxzZ]
## [-b <区块数目>][-C <目的目录>][-f <备份文件>][-F <Script文件>]
## [-K <文件>][-L <媒体容量>][-N <日期时间>][-T <范本文件>][-V <卷册名称>]
## [-X <范本文件>][-<设备编号><存储密度>][--after-date=<日期时间>]
## [--atime-preserve][--backuup=<备份方式>][--checkpoint][--concatenate]
## [--confirmation][--delete][--exclude=<范本样式>][--force-local]
## [--group=<群组名称>][--help][--ignore-failed-read]
## [--new-volume-script=<Script文件>][--newer-mtime][--no-recursion][--null]
## [--numeric-owner][--owner=<用户名称>][--posix][--erve][--preserve-order]
## [--preserve-permissions][--record-size=<区块数目>]
## [--recursive-unlink][--remove-files][--rsh-command=<执行指令>]
## [--same-owner][--suffix=<备份字尾字符串>][--totals]
## [--use-compress-program=<执行指令>][--version]
## [--volno-file=<编号文件>][文件或目录...]

tar -czvf ab.tar.gz a b # 压缩 ab 文件
tar -tzvf test.tar.gz   # 列出压缩文件
tar -xzvf test.tar.gz   # 解压压缩文件
```


### tree

```bash
# tree 可以递归展示指定目录下的目录/文件结构
tree -a # 同时展示隐藏文件
tree -F # 通过"*","/","=","@","|", 标记文件或目录的类型
tree -I '.cargo|.git' # 排除匹配的文件或目录
```


### grep

```bash
# grep 可以快速搜索匹配文本 (支持Regex Expression)

grep --color "me" /etc/password # 搜索password文件下面所有匹配 (me) 的行
grep -n "me" /etc/passwd # 同时显示行号
grep -v "me" /etc/passwd # 反查, 列出所有不包含 (me) 的行
grep -c "me" /etc/passwd # 只显示匹配行数
grep -C 1 "me" /etc/passwd # 同时展示匹配行的上下行
grep -A 1 "me" /etc/passwd # 同时展示匹配行的上一行
grep -B 1 "me" /etc/passwd # 同时展示匹配行的下一行
grep -i "me" /etc/passwd # 搜索时不区分大小写
grep -l "first" *.txt # 列出包含 (first) 的文件
grep -L "first" *.txt # 列出不包含 (first) 的文件
```


### sed

```bash
# sed : Stream Editor 流编辑器
# aaa 替换为bbb
echo "aaa" | sed "s@a@b@g" # >: bbb
# 显示 test 文件的第 10 行到第 20 行的内容
sed -n '10,20p' test
# 删除每行最后的两个字符
sed 's/..$//' test
# 删除每行开头的两个字符
sed 's/..//' test
```


### cut

```bash
# cat: 以行为单位裁剪数据

#  按字节（bytes）定位，用-b选项。
#  按字符（characters）定位，用-c选项。
#  按域（fields）定位，用-f选项。

# 提取每一行的第3,4,5,8个字节
who|cut -b 3-5,8
# 提取每一行的第3个字节
who|cut -b 3
who|cut -b 3-5,8
```


### alias

```bash
# alias: 定义别名
alias # 列出所有别名
alias vi # 列出vi的别名
unalias vi # 取消vi别名
unalias -a # 取消所有别名
```


### history

```bash
# history: 命令行输入历史
history
```


### top

```bash
# top: 实时显示进程的动态。
# options [-] [d delay] [q] [c] [S] [s] [i] [n] [b]
## -d: 改变显示的更新速度，或是在交谈式指令列( interactive command)按 s
## -q: 无延迟的显示速度，当有superuser 的权限，则 top 将会以最高的优先序执行
## -c: 切换显示模式 A.只显示执行档的名称 / B.显示完整的路径与名称
## -S: 累积模式，会将己完成或消失的子行程的 CPU time 累积起来
## -s: 安全模式，将交谈式指令取消, 避免潜在的危机
## -i: 不显示任何闲置 (idle) 或无用 (zombie) 的行程
## -n: 更新的次数，完成后将会退出 top
## -b: 批次档模式，搭配 "n" 参数一起使用，可以用来将 top 的结果输出到档案内

top
```


### ps

```bash
# ps: process status
## -A   列出所有的进程
## -w   显示加宽可以显示较多的资讯
## -au  显示较详细的资讯
## -aux 显示所有包含其他使用者的行程

ps -ef | grep keyword
```
