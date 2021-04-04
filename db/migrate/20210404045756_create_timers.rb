class CreateTimers < ActiveRecord::Migration[6.0]
  def change
    create_table :timers do |t|
      t.references :user, foreign_key: true
      t.integer :genre,              null: false
      t.date :begin_time, null: false
      t.date :end_time, null: false
      t.timestamps
    end
  end
end
