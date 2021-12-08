
# アプリケーション名

## Know the citrus kingdom


# アプリケーションの概要

##


# URL

## https://original-37116.herokuapp.com/


# テスト用アカウント

* Basic認証ID：imochan
* Basic認証Pass：imochan


# 利用方法

## 1.トップページのヘッダーからSign upボタンを押下し、(nickname、email、password、password_confirmation)を入力しユーザー新規登録を行う。
## 2.ヘッダーからNew Postボタンを押下し、()
## 3.


# アプリケーションを作成した背景

##


# 洗い出した要件

##


# 実装した機能についての画像や説明

##

# 実装予定の機能

##

# データベース設計

<!-- users テーブル -->

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| emile              | string | null: false |
| encrypted_password | string | null: false |

<!-- Association -->

- has_many :recommends
- has_many :favorites, dependent: :destroy

<!-- recommends テーブル -->

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| place_name  | string     | null: false, unique: true      |
| region_id   | integer    | null: false                    |
| city_id     | integer    | null: false                    |
| category_id | integer    | null: false                    |
| user        | references | null: false, foreign_key: true |

<!-- Association -->

- belongs_to :user
- has_many :favorites, dependent: :destroy

<!-- favorites テーブル -->

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| recommend | references | null: false, foreign_key: true |

<!-- Association -->

- belongs_to : user
- belongs_to : recommend


# 画面遷移図


# 開発環境

* フロントエンド：HTML,CSS
* バックエンド：Ruby(ver2.5.1)/Ruby on Rails(ver6.0.0)
* インフラ：AWS(S3),MySQL
* テスト：RSpec
* テキストエディタ：Visual Studio Code
* タスク管理：GitHubプロジェクトボード


# ローカルでの動作方法