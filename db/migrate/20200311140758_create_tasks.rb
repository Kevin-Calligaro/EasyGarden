class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references  :garden_vegetable
      t.integer     :step
      t.string      :action
      t.date        :date
      t.boolean     :done, default: false

      t.timestamps
    end
  end
end
