# README

## アプリ名
<h1>私の辞書</h1>
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

|----------------------------------------------------------
## 今後実装予定
・フォローのさいのテーブル
・コメントテーブル

