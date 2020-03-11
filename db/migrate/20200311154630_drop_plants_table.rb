class DropPlantsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :plants
  end
end
