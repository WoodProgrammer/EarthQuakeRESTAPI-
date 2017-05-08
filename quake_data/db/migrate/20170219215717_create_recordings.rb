class CreateRecordings < ActiveRecord::Migration[5.0]
  def change
    create_table :recordings do |t|
      t.references :location, foreign_key: true
      t.float :power
      t.date :time

      t.timestamps
    end
  end
end
