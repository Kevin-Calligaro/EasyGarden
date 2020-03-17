class AddPositionToGardenVegetables < ActiveRecord::Migration[5.2]
  def change
    add_column :garden_vegetables, :postion, :string
  end
end
