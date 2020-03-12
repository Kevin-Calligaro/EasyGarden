class CreateGardenVegetables < ActiveRecord::Migration[5.2]
  def change
    create_table :garden_vegetables do |t|
      t.references :garden, foreign_key: true
      t.references :vegetable, foreign_key: true

      t.timestamps
    end
  end
end
