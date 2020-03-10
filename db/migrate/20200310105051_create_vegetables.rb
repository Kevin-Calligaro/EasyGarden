class CreateVegetables < ActiveRecord::Migration[5.2]
  def change
    create_table :vegetables do |t|
      t.string :specie
      t.date :seeding_start
      t.date :seeding_end
      t.string :seed_description
      t.date :planting_start
      t.date :planting_end
      t.string :plant_description
      t.date :harvest_start
      t.date :harvest_end
      t.string :harvest_description
      t.integer :area

      t.timestamps
    end
  end
end
