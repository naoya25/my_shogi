# my_shogi

Flutter を使って開発された将棋アプリです。普通の将棋に加え、オリジナルのルールで将棋を楽しむことができます。

## Features

- 普通の将棋
- オリジナル将棋

## Getting Started

1. [Flutter](https://flutter.dev)のインストール
2. [このリポジトリ](https://github.com/naoya25/my_shogi.git)のクローン

```zsh
git clone https://github.com/naoya25/my_shogi.git
```

3. 実行

```zsh
cd my_shogi
flutter run
```

# memo

将棋スピリッツ作るぞ！！

CP 作るのだるそうだから、一台のスマホの前に 2 人のプレイヤーがいる前提で作る

### やりたいこと

- 身代わり
  - 玉が死んだ時にそれに相当する仲間を犠牲にして玉を任意の場所に復活させる
  - ライフの概念追加
    - 玉が死ぬ代わりにライフで受けれるようにする
- パワースポット
  - パワースポットを空いてるマスのどこかにランダムで出現させて、そこに到達したらパワーアップさせる
  - 1 ターンだけ、8 方向無限に進めるとか
  - 進んだ後に 2 歩とかになってそう
- ユニーク将棋
  - コマの動き変化
  - 全部銀 対 全部金 とか
  - 駒落ち将棋
- 人狼将棋
  - 誰が玉かわからない
- インビジブル将棋
  - 敵の駒が見えない
- フューチャー将棋
  - 指した手が見えなくて、1 ターン後に見えるようになる
  - そもそものデータ構造変えないと実現できないか？？
- テスト書く

### 将棋の実装

- 詰み判定
- 投了
- 駒のデザイン
- 最下段まで歩が移動したら強制で成駒にする
