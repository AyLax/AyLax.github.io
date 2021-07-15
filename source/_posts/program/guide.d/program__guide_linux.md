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

