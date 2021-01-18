# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
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

