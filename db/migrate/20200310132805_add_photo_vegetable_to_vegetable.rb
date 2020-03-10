class AddPhotoVegetableToVegetable < ActiveRecord::Migration[5.2]
  def change
    add_column :vegetables, :photo_vegetable, :string
  end
end
