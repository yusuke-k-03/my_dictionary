# README

## アプリ名
<h1>私の辞書</h1>

##  概要
本アプリは自分の学習する効率を上げるために作成いたしました。
基本的なアプリの使用はマイページで自身が学んだ内容を記録していき、私の辞書を作り上げていくアプリです。
カテゴリーを選んでタイトル、テキストを送信することで残すことができます。

またトップページからわからないことを質問することができ、辞書同様
カテゴリー、タイトル、テキストを送信して質問可能です
ログインしているユーザーであればそれに回答することができます。

## 開発環境
Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code / Trello
- Railsのバージョン 6.0.0
- MySQLのバージョン 5.5.8
- Gitのバージョン 2.24.3
- Herokuのバージョン 7.47.11

## 本番環境
https://my-dictionary-33022.herokuapp.com/

ログイン情報（テスト用）
- Eメール：test@test
- パスワード:test11

ログイン情報（テスト用②）
- Eメール：test2@test2
- パスワード:test11

## 制作背景
自分自身が今回プログラミングを学んでいく中で、わからないことを見つけると,
とりあえずメモ帳に貼り付けるということを繰り返していました。
それを続けていくとどこに何を保存したかわからなくなってしまうため、「検索機能」が欲しいというところから辞書を作ろうと考えました。
また学習で使用いてた「Qiita」がとても便利なのだと感じ、「質問投稿機能」「返答機能」をつけることを考え、
私の辞書を制作いたしました。

## DEMO
### トップページ
![toppage](https://user-images.githubusercontent.com/75667929/106576278-4d2dd280-6580-11eb-8564-7619a3758567.png)

### マイページ
### 投稿画面
### 回答・いいね画面


## 工夫したとろこ
- マイページのみの表示とログイン時のみの表示を分けたこと
- 質問の回答に対していいねボタンの追加

## 課題や今後実装したい機能
- フォロー機能
- 質問に対して返答が来た際のアラーム通知
- カテゴリーを選ぶのではなくユーザー自身で入力して作成する



## usersテーブル

| colum   | type    | options      
|---------|---------|--------------
| name    | string  | null: false  

### association
- has_many :dictionaries
- has_many :answers
- has_many :likes

## dictionariesテーブル

| colum       | type       | options
|-------------|------------|--------------
| title       | string     | null: false
| category_id | integer    | null: false
| text        | text       | null: false
| user        | references | null: false

### association
- belongs_to :user

## questionsテーブル

| colum       | type       | options
|-------------|------------|--------------
| title       | string     | null: false
| category_id | integer    | null: false
| text        | text       | null: false
| user        | references | null: false

### association
- belongs_to :user
- has_many :answer

## answersテーブル

| colum       | type       | options
|-------------|------------|--------------
| text        | text       | null: false

### association
- belongs_to :user
- belongs_to :question
- has_many :like

## likesテーブル

| colum       | type       | options
|-------------|------------|--------------
| user_id     | integer    | null: false
| answer_id   | integer    | null: false

### association
- belongs_to :user
- belongs_to :answer

