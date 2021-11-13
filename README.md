# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :sentences

## sentences テーブル

| Column     | Type       | Options                        |
| ---------- | -----------| ------------------------------ |
| sentence   | text       | null: false                    |
| translate  | text       | null: false                    |
| remarks    | text       |                                |
| tag        | text       | null: false                    |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
