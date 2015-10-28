+++
date = "2015-10-28T10:58:58+09:00"
draft = false
title = "Hugoでカテゴリーを追加する"
categories = ["hugo"]
+++

Hugoで記事を書いたときに、カテゴリーを追加して管理したいことがある。
その際はメタ情報に、

```
+++
date = "2015-10-28T10:58:58+09:00"
draft = true
title = "add category"
categories = ["hugo"]
+++
```
以下のように、categories fieldを追加して、配列で値を渡してやればよい。
