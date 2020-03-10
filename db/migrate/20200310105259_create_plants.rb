class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.references :garden, foreign_key: true
      t.references :vegetable, foreign_key: true
      t.date :planting_date
      t.string :status

      t.timestamps
    end
  end
end
