
# アプリケーション名
## Recommended spots in Ehime


# アプリケーションの概要
### ユーザー同士で愛媛県のおすすめスポットをシェアし、アプリ閲覧者がカテゴリーに沿った場所を知ることができる。


# URL
## https://original-37116.herokuapp.com/


# テスト用アカウント
* Basic認証ID：imochan
* Basic認証Pass：imochan


# 利用方法
### 1,ヘッダーからSign upボタンを押下し、(nickname、email、password、password_confirmation)を入力しユーザー新規登録を行う。
### 2,ヘッダーからLog outボタンを押下し、ログアウトを行う。
### 3,ヘッダーからLog inボタンを押下し、(email、password)を入力しログインする。
### 4,ヘッダーからNew Postボタンを押下し、(画像、場所名、地方、市町村、カテゴリー)を入力し新規投稿を行う。
### 5,トップページの投稿一覧から投稿をクリックし、投稿の詳細を確認する。
### 6,ヘッダーからRecommended spots in Ehimeを押下し、トップページへ遷移する。
### 7,ログインユーザーの場合のみ、自身の投稿した内容を、詳細画面から「投稿を削除しますか?」ボタンを押下し、投稿を削除する。


# アプリケーションを作成した背景
### 愛媛県出身者以外の友人に「愛媛県に旅行に行くなら」と課題をヒアリングしたところ、「愛媛県に何があるのかわからない」「目的地までの道のりで立ち寄れる場所の情報がない」という課題があると判明した。課題を分析した結果、「愛媛県の情報量が全く足りてない」が真因であると仮説を立てた。同様の問題を抱えているユーザーも多いと憶測し、真因を解決するために、愛媛県のおすすめ場所を共有しあえるSNSアプリケーションを開発することにした。


# 洗い出した要件
## https://docs.google.com/spreadsheets/d/1sb9nNwi5pfScvQt1QZ9ZaQYt6eOMs3WIIdisJQoEcVw/edit#gid=982722306


# 実装した機能についての画像や説明
## [![Image from Gyazo](https://i.gyazo.com/7ac903dd82cce6a9e2ab20a9772ce09e.jpg)](https://gyazo.com/7ac903dd82cce6a9e2ab20a9772ce09e)

# 実装予定の機能
### 現在検索機能を実装中。今後は、お気に入り機能を実装し、ユーザーマイページにおすすめスポットを表示できるアプリケーションを開発することにした。


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

## [![Image from Gyazo](https://i.gyazo.com/fbc331636b9f8fc777d7b6bd6b17c084.png)](https://gyazo.com/fbc331636b9f8fc777d7b6bd6b17c084)

# 画面遷移図
## [![Image from Gyazo](https://i.gyazo.com/4da11b9753af5f95493c6afabe44750d.png)](https://gyazo.com/4da11b9753af5f95493c6afabe44750d)

# 開発環境
* フロントエンド：HTML,CSS
* バックエンド：Ruby(ver2.5.1)/Ruby on Rails(ver6.0.0)
* インフラ：AWS(S3),MySQL
* テスト：RSpec
* テキストエディタ：Visual Studio Code
* タスク管理：GitHubプロジェクトボード


# ローカルでの動作方法
## 以下のコマンドを順に実行してください。
### % git clone https://github.com/Ikumarucyanman/original-37116
### % cd original-37116
### % bundle install
### % yarn install