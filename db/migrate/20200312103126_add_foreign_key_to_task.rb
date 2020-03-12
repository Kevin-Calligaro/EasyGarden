class AddForeignKeyToTask < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :tasks, :garden_vegetables
  end
end
