class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.integer :user_id
      t.integer :genre
      t.datetime :start_time
      t.time :calc_time
      t.text :comment

      t.timestamps
    end
  end
end
