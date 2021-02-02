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
また学習で使用しいてた「Qiita」がとても便利なのだと感じ、「質問投稿機能」「返答機能」をつけることを考え、
私の辞書を制作いたしました。

## DEMO

#### トップページ
![top](https://user-images.githubusercontent.com/75667929/106578207-9ed75c80-6582-11eb-9b0b-872fbddbd56f.png)

ログイン済みのトップページです。  
「テスト」をクリックするとユーザーのマイページに遷移します。  
「test」をクリックすると質問の詳細ページに遷移します。  
「新しい質問」をクリックすると投稿画面に遷移します。  

#### トップページ②
![logout](https://user-images.githubusercontent.com/75667929/106578386-cb8b7400-6582-11eb-9480-29e922e744d2.png)

ログアウト済のトップページです  
「新規登録」をクリックするとユーザーの新規登録画面に遷移します。  
「新しい質問」はログインしないと表示されません  

#### マイページ
![my](https://user-images.githubusercontent.com/75667929/106578437-d9d99000-6582-11eb-93dc-75e987e0c43b.png)

マイページです  
私の自引きのタイトルにあたるものをクリックすると投稿した内容の詳細ページに遷移します。  
私の質問のタイトルにあたるものをクリックすると自身が投稿した質問の詳細ページに遷移します。  
「辞書に追加」をクリックすると投稿画面に遷移します。  

#### 自引きの詳細ページ
![my-show](https://user-images.githubusercontent.com/75667929/106579498-1f4a8d00-6584-11eb-9779-0f3c980308e8.png)


#### 投稿画面
![new-dictionary](https://user-images.githubusercontent.com/75667929/106576952-17d5b480-6581-11eb-9069-889d372c1173.png)

「タイトル・テキスト」を入力し、「カテゴリー」を選択することで投稿できます。  

#### 回答・いいね画面
![kaitou-iine](https://user-images.githubusercontent.com/75667929/106577015-30de6580-6581-11eb-9a72-b8422b883ce6.png)

「返信する」を入力しSENDをクリックすることで質問に対する回答ができます。  
コメントごとにいいねが表示され、クリックすることで  
いいね　➡︎　いいねを外す  
０　➡︎　１とカウントが増えていきます  




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

