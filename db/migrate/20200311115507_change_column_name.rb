class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :vegetables, :seed_description, :sedding_desription
    rename_column :vegetables, :plant_description, :planting_desription
    rename_column :vegetables, :harvest_start, :harvesting_start
    rename_column :vegetables, :harvest_end, :harvesting_end
    rename_column :vegetables, :harvest_description, :harvesting_description
  end
end
