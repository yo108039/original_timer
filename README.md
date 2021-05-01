・アプリ名	
　生活向上アプリ

・概要(このアプリでできることを書いて下さい)
　読書や勉強時間を実際に測定し、保存することができます
　実際の行動時間をカレンダー形式で表示し、一覧として確認することができます
　
・制作背景(意図)
　自分がより効率的に勉強や読書、その他の時間を管理し、今より少しでもよい時間配分ができるようなアプリを作成したいと考え、作成しました。

・DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)						
　未実装

・実装予定の内容
　ユーザ管理(ユーザ登録、ログイン、ログアウト)
　時間測定
　ログ表示機能
　(日次、週次、月次時間表示機能)
　(グラフ表示機能)


＃ テーブル設計

## users テーブル

| Column             | Type    | Options                    |
| ----------         | --------| --------------             |
| nick_name          | string  | null: false                |
| email              | string  | null: false,  unique: true |
| encrypted_password | string  | null: false                |

### Association

- has_many  :times

## timers テーブル

| Column                | Type        | Options         |
| ----------            | --------    | --------------  |
| user                  | references  | null: false,  foreign_key: true      |
| genre                 | integer     | null: false     |
| begin_time            | date        | null: false     |
| end_time              | date        | null: false     |

### Association

- has_one :user

