class GardensController < ApplicationController
  before_action :load_garden, only: [:show, :edit]
  before_action :load_tasks, only: [:show, :edit]

  def show
    @garden_vegetables = GardenVegetable.all
    @vegetables = Vegetable.all
  end

  def edit
    @garden_vegetables = GardenVegetable.all
    @garden_vegetable = GardenVegetable.new
    @vegetables = Vegetable.all
  end

  def update
  end

  def new

  end

  def create

  end

  private

  def load_garden
    @garden = Garden.find(params[:id])
  end

  def load_tasks
    @tasks_not_done = @garden.tasks.where(done: false).order("step, date IS NOT NULL, date ASC")
    @tasks_not_done = @tasks_not_done.sort_by { |task| -Task::URGENCIES.index(task.final_urgency) }
    @tasks_per_veggie = @tasks_not_done.group_by(&:garden_vegetable)
  end
end



