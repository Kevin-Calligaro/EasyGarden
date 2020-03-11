class DropGardenVegetables < ActiveRecord::Migration[5.2]
  def change
    drop_table :garden_vegetables
  end
end
