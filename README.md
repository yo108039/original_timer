＃ テーブル設計

## users テーブル

| Column             | Type    | Options                    |
| ----------         | --------| --------------             |
| nick_name          | string  | null: false                |
| email              | string  | null: false,  unique: true |
| encrypted_password | string  | null: false                |

### Association

- has_many  :times

## times テーブル

| Column                | Type        | Options         |
| ----------            | --------    | --------------  |
| user                  | references  | null: false,  foreign_key: true      |
| time                  | string      | null: false     |
| begin_time            | date        | null: false     |
| end_time              | date        | null: false     |

### Association

- has_one :user

