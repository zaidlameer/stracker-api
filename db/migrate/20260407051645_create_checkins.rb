class CreateCheckins < ActiveRecord::Migration[8.1]
  def change
    create_table :checkins do |t|
      t.references :habit, null: false, foreign_key: true
      t.date :date
      t.boolean :completed

      t.timestamps
    end
  end
end
