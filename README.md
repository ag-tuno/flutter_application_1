# flutter_application_1

ビンゴアプリ

## 目標

- タイトル画面、ビンゴ画面、設定画面から構成される。
    - タイトル画面
        - タイトル表示、ビンゴ画面、設定画面への遷移のみ行う。
    - ビンゴ画面
        - ビンゴの実行、設定画面への遷移を行う。
        - ビンゴの制御はBLocパターンを用いて行う。
    - 設定画面
        - ビンゴに関する設定、ビンゴ画面への遷移を行う。
    - その他
        - 演出にアニメーションを用いる。
        - テストコードを作成する。

## 構成

.
└─lib
   ├─bingo
   │   └─bingo.dart：ビンゴ画面。
   │   └─bingo_bloc.dart：ビンゴの状態を管理する。
   ├─config
   │   └─config.dart：コンフィグ画面。ビンゴに関する設定を行う。
   │   └─config_bloc.dart：コンフィグの状態を管理する。
   ├─main.dart：プログラムの開始地点。ルーティングを行う。
   └─title.dart：タイトル画面。

## 参考ページ

- 画面遷移
    - https://docs.flutter.dev/cookbook/navigation/named-routes

- ドロップダウンメニュー
    - https://api.flutter.dev/flutter/material/DropdownButton-class.html

- Flutter BLoC
    - https://pub.dev/packages/flutter_bloc
    - http://skmkuma.com/%E3%80%90flutter%E3%80%91flutter_bloc%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6%E3%81%BE%E3%81%A8%E3%82%81%E3%82%8B/

- enum
    - https://medium.com/dartlang/dart-2-17-b216bfc80c5d#72da

- enumをドロップダウンメニューに表示させる
    - https://stackoverflow.com/questions/49972218/how-to-bind-an-enum-to-dropdownbutton-in-flutter
## メモ

- StatefulWidget
    -- 状態を保持するウィジェット。
- StatelessWidget
    -- 状態を保持しないウィジェット。