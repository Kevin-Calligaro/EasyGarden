class TasksController < ApplicationController
  def add_date
    @garden_vegetables = GardenVegetables.all
    @tasks = Task.all
  end

  def mark_as_done
    @task = Task.mark_as_done
    @task.save
  end
end
