+++
date = "2015-10-28T14:40:23+09:00"
draft = false
title = "Hugoでimageを追加"
categories = ["hugo"]
+++

## 概要
Hugoでhtmlをビルドするときに画像をどこに置こう、と考えた。
directory構成を間違うと、localでは見られるが、
build後に見られなくなるということがおこるので、どうしようと。

現状の結論は単純で、hugo-home/content/post以下にassets directoryを作りましょう、というところに落ち着いた。

## やったこと

hugo-home/content/post/(directory)はbuild後にそのままpublic/post/(directory)に移される。
従って、僕は

```
hugo-home/content/post/assets/image/sample.jpg
```

を置いた上で、

```
![Example image](assets/image/sample.jpg)
```

とmarkdownで記述した。すると↓

![Example image](assets/image/sample.jpg)

できた！

postごとに対応するdirectoryを作ったりするのが、
後々のことを考えるとよいと思う一方、
手でdirectoryを作る仕組みが(サボりの僕がやって)うまくまわるとは思えないので、

```
hugo new post/(title)
```

のpost processとして、対応するimage directoryが自動でつくられるようにするのが、
よいのかな。
hugoコマンドの拡張の仕方を調べた後にまた！
