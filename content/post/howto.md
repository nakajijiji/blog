+++
date = "2015-10-27T19:57:32+09:00"
draft = false
title = "Hugo + github pagesでブログサイト"
categories = ["hugo"]
+++

## 概要
Hugoを使って、HTMLを生成し、github pagesにアップロードする（ことによってブログサイトを作る）フローを作った。

[このサイト](http://qiita.com/eichann/items/4fe61b8b9bbafcfbe847)を見れば、
構築は問題なくいける。この記事では、構築ではなく、日々の記事作成について、自分用にまとめておく。

## 記事の作成
まず

```
hugo new post/(title)
```

するとhugo-home/content/post/(title).mdというファイルが生成される。
この.mdファイルが、一つのブログポストに対応する。

```
+++
date = "2015-10-27T19:57:32+09:00"
draft = true
title = "Hugo + github pagesでブログサイト"

+++
```
のようなメタ情報が始めから記述されている。draft = trueだと、
実際のポストとしては表示されない。公開する際はdraft = falseにする。

macで.mdファイルを編集するソフトは様々あるが、僕はgithub製の
[Atom](https://atom.io/)を使っている。

```
atom hugo-home/content/post/(title).md
```

で、編集画面にいくが、

```
ctrl + shift + m
```
で、マークダウンのプレビューが見られるのが便利だ。

編集が終わったら、draft = falseなっていることを確認して、

```
hugo server -t (テーマ名)
```

で、サーバーを立ち上げて確認し、HTMLをgenerateする。
僕の場合、以下のようなshellスクリプトで、HTMLのgenerateからgithubへの
pushまで一気にやってしまっている。

```deploy.sh
echo "hugo -t nakaji"
hugo -t nakaji
echo "enter into public"
cd public
echo "push to repository"
git add -A
git commit -m "new post is created"
git push origin master
cd ../
echo "deploy succeeded"
```

以上で、更新が終わる。
