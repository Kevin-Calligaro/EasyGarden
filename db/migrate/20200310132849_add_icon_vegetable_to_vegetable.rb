class AddIconVegetableToVegetable < ActiveRecord::Migration[5.2]
  def change
    add_column :vegetables, :icon_vegetable, :string
  end
end
