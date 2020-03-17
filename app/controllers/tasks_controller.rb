class TasksController < ApplicationController

  def mark_as_done
    @task = Task.find(params[:id])
    @task.mark_as_done!
    redirect_to garden_path(@task.garden_vegetable.garden)
  end
end
