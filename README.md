<!-- テーブル設計 -->

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