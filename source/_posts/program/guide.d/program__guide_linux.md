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

