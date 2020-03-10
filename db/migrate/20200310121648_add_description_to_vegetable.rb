class AddDescriptionToVegetable < ActiveRecord::Migration[5.2]
  def change
     add_column :vegetables, :description, :string
  end
end
