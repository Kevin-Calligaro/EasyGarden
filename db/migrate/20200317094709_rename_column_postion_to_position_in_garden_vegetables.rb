class RenameColumnPostionToPositionInGardenVegetables < ActiveRecord::Migration[5.2]
  def change
    rename_column :garden_vegetables, :postion, :position
  end
end
