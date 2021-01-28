# README

## アプリ名
<h1>私の辞書</h1>

##  概要
本アプリは自分の学習する効率を上げるために作成いたしました。
基本的なアプリの使用はマイページで自身が学んだ内容を記録していき、私の辞書を作り上げていくアプリです。

またトップページからわからないことを質問することができ、ログインしているユーザーであればそれに回答することができます。

## 本番環境
https://my-dictionary-33022.herokuapp.com/

ログイン情報（テスト用）
<<<<<<< Updated upstream
- Eメール：
- パスワード
=======
- Eメール：test@test
- パスワード:test11
>>>>>>> Stashed changes

## 制作背景
自分自身が今回プログラミングを学んでいく中で、わからないことを見つけるととりあえずメモ帳に貼り付けるということを繰り返していました。
それを続けていくとどこに何を保存したかわからなくなってしまうため、「検索機能」が欲しいというところから辞書を作ろうと考えました。
また学習で使用いてた「Qiita」がとても便利なのだと感じ、「質問投稿機能」「返答機能」をつけることを考え、
私の辞書を制作いたしました。

## DEMO
トップページ

新規登録画面

マイページ

## 工夫したとろこ
<<<<<<< Updated upstream
・マイページのみの表示とログイン時のみの表示を分けたことです

## 課題や今後実装したい機能
・フォロー機能
・質問に対して返答が来た際のアラーム通知
・カテゴリーを選ぶのではなく自分で作る
=======
-マイページのみの表示とログイン時のみの表示を分けたことです

## 課題や今後実装したい機能
- フォロー機能
- 質問に対して返答が来た際のアラーム通知
- カテゴリーを選ぶのではなく自分で作る
>>>>>>> Stashed changes


## usersテーブル

| colum   | type    | options      
|---------|---------|--------------
| name    | string  | null: false  

### association
- has_many :dictionaries

## dictionariesテーブル

| colum       | type       | options
|-------------|------------|--------------
| title       | string     | null: false
| category_id | integer    | null: false
| text        | text       | null: false
| user        | references | null: false

### association
- belongs_to :user
<<<<<<< Updated upstream



=======
>>>>>>> Stashed changes
