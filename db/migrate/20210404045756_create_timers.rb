class CreateTimers < ActiveRecord::Migration[6.0]
  def change
    create_table :timers do |t|
      t.references :user, foreign_key: true
      t.integer :genre_id,              null: false
      t.date :memory_date
      t.time :end_time, null: false
      t.text :comment
      t.timestamps
    end
  end
end
