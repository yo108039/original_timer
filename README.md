# アプリ名	
　Mine Manage(M2) Timer

# 概要
　読書や勉強時間を実際に測定し、保存することが可能。 
　実際の行動時間をカレンダー形式で表示し、一覧として確認することが可能。
　
# 制作背景
　より効率的に勉強や読書、その他の時間を管理し、充実した生活を送りたいと考え、アプリを作成。
 
# 利用方法
　1.ユーザー登録、ログイン
　2.ジャンルを選択
　3.「タイマー開始」ボタンを押下
　4.測定完了後、「停止」ボタン　→　「記録」ボタンを押下
　5.「保存する」ボタンを押下すると、データが保存
　6.「ログ」ボタンにてデータの一覧データが表示

# テスト用アカウント
　メールアドレス：test@yo.jp
　ニックネーム：test
　パスワード：123456

# 画像
　時間測定機能
　https://gyazo.com/d90e9134e86999c91024b0aa3e22c036
 
　一覧表示機能
　https://gyazo.com/30723fa1ac52ea23cd0a7f61eefe187b

# 実装予定の内容
　ユーザ管理 ※ユーザ登録、ログイン、ログアウト  
　時間測定 
  時間保存機能
　ログ表示機能  
 
# gem
　・devise  
　・pry-rails  
　・active_hash  
　・simple_calendar  


# テーブル設計

## users テーブル

| Column             | Type    | Options                    |
| ----------         | --------| --------------             |
| nick_name          | string  | null: false                |
| email              | string  | null: false,  unique: true |
| encrypted_password | string  | null: false                |

### Association

- has_many  :meetings

## meetings テーブル

| Column                | Type        | Options         |
| ----------            | --------    | --------------  |
| genre                 | integer     | null: false     |
| start_time            | genre       | null: false     |
| calc_time             | time        | null: false     |
| comment               | text        | null: false     |

### Association

- has_one :user

