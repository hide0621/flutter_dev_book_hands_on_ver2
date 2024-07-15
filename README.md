# flutter_dev_book_hands_on_ver2

hiragana converter

書籍「Flutter実践開発」の第8章の内容に基づくものです

[Flutter実践開発 - iPhone／Android両対応アプリ開発のテクニック - ](https://gihyo.jp/book/2024/978-4-297-13993-3)

## 開発で使用したパッケージ

`flutter pub add http`

`flutte pub add json_annotation`

`flutter pub add --dev json_serializable`

`flutter pub add flutter_riverpod riverpod_annotation`

`flutter pub add --dev riverpod_generator custom_lint riverpod_lint`

`flutter pub add --dev build_runner`

## .gitignoreに記載したのにも関わらず、反映されない問題とその解決策

以下のコマンドを実行して、キャッシュを削除する（gitignoreが存在するディレクトリにて）

`git rm -r --cached .`

`git add .`

`git commit -m ".gitignoreを反映させる"`

`git push origin リモートブランチ名`

参照：

[.gitignoreに記載したのにも関わらず、反映されない問題とその解決策](https://atsu-developer.net/291/)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
