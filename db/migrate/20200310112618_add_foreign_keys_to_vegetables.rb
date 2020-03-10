class AddForeignKeysToVegetables < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :relationships, :vegetables, column: :vegetable1_id, primary_key: :id
    add_foreign_key :relationships, :vegetables, column: :vegetable2_id, primary_key: :id
  end
end
