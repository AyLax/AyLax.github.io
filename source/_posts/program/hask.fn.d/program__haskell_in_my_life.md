---
title: 君は Haskell が本当に上手(です)
date: 2021-06-23 08:00:00
updated: 2021-06-23 08:00:00
tags:
  - haskell
categories: 
  - program
---

Haskell in my life.
<!-- more -->


## 契机

从今年年初开始, 就一直有一个想法: 自己写一个的编辑器。

对于这个编辑应该是怎样的，最近也是有了一个初步的想法。

首先，它本身得是简单易用的，他一开始就是个编辑器而已。

其次，它得是像`Emacs`那样, 可以方便的进行各种功能扩展。 

那么，该用何种方式实现呢？一开始，我想到的是`Rust`，但是它的`borrow & lifetime`机制, 目前用起来还是有那么一些别扭。也会分散我的注意力。 于是，我不得不pass掉它。这时候, 我想到了`haskell`。同样有强大的类型推导系统(这意味着纠错将会更加简单), 而它的`ghci` 意味着我可以快速试验我的想法。

那，就决定是你了。


## 才相知

可惜的是, 我对haskell的了解也仅仅停留在知道它是一门函数式语言, 幸好，网上有许多的haskell的教程。而英文，在谷歌翻译的加持下, 也不再是问题

目前我学习haskell是通过 [Learn Your Haskell](http://learnyouahaskell.com/chapters) 这份网上教程学的。 

它的内容非常详尽，也通俗易懂。并且由于有了 `stack` 和 `ghci` 这两个工具存在，我可以随意挥洒我的代码，这感觉很像我之前学 `chez-scheme` , 他也是提供了一份详尽易用的学习文档和一套强大的 REPL 环境。这样联想起来 `python` 能火起来， 这方面也是居功甚伟。


## 初上手

目前，haskell 是通过 [stack](https://docs.haskellstack.org/en/stable/README/) 来做项目&依赖管理的, 这一点很像 `Rust` 的 `Cargo`, 简单又强大。

我的 `ghci` 也是通过 `stack` 下载的。 可惜的是，这个出来的有点晚，不然的话, `haskell` 的生态应该会比现在好一点
