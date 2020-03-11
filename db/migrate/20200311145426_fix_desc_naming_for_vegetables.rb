class FixDescNamingForVegetables < ActiveRecord::Migration[5.2]
  def change
    rename_column :vegetables, :planting_desription, :planting_description
  end
end
