---
title: Git 使用指南
date: 2021-06-14 06:00:00
updated: 2021-06-29 06:00:00
tags:
  - git
categories: 
  - program
---

FAQ for Git.
<!-- more -->


## 完整的git提交流程

```bash
# 克隆或初始化一个git仓库
git clone git@user.repo.git # or: git init repo

# fork一个开发分支, 并在上面编写代码
git checkout -b branch_name

# 加入版本库, 并提交
git add . && git commit

# 推送到git-repo.server
git push # Then: Create MR -> Code Review -> Merge
```

## 撤回错误的分支提交

```bash
## 如果提交到错误的branch 例如直接提交到master
git reset --soft HEAD^ # 软撤销，保留修改的代码
git reset --mixed # 将提交的代码撤回到 git add . 之前
git stash # 暂存代码
git checkout develop # 切换到develop 
git pull  && git checkout -b new_branch # 创建新分支 
git stash pop # 弹出暂存代码
```


## 配置多个ssh Keys

```bash
# 1. 在~/.ssh目录下生成多个Keys
cd ~/.ssh
ssh-keygen -t rsa -C "yourname@github.com" -f "github.id_rsa"
ssh-keygen -t rsa -C "yourname@gitlab.com" -f "gitlab.id_rsa"

# 2. copy id_rsa.pub to your ssh client

# 3. 修改ssh config 文件
vim ~/.ssh/config
# ===========================
# github
Host github.com
HostName github.com
PreferredAuthentications publickey
IdentityFile ~/.ssh/github.id_rsa


# gitlab
Host gitlab.com
HostName gitlab
PreferredAuthentications publickey
IdentityFile ~/.ssh/gitlab.id_rsa
# ===========================


# 4. 测试是否生效
ssh -T git@github.com
```



## git 修改commit时间

```bash
## => 当前日期减去29天
# [Mac]   date -R -v-29d
# [Linux] date -R -d "$dataset_date - 29 days" 

git commit --date="Tue, 13 Jul 2021 11:13:57 +0800" -am "commit message"
```




## git 实现统计功能

```bash
# 统计增删的代码行数
git log --author="$(git config --get user.name)" --pretty=tformat: --numstat | awk '{ add += $1 ; subs += $2 ; loc += $1 - $2 } END { printf "added lines: %s removed lines : %s total lines: %s\n",add,subs,loc }' -

# 贡献者统计
git log --pretty=format:%ae | awk -- '{ ++c[$0]; } END { for(cc in c) printf "%5d %s\n",c[cc],cc; }' | sort -u -n -r | head -n 5
```

