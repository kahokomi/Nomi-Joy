class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :restaurant_id, foreign_key: true
      t.references :user_id, foreign_key: true, null: false
      t.string :name, null: false
      t.date :date, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.string :memo
      t.integer :progress_status, default: 0, null: false
      t.boolean :fee_status, default: false, null: false

      t.timestamps
    end
  end
end
