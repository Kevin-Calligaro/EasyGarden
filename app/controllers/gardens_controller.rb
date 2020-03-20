class GardensController < ApplicationController
  def show
    @garden_vegetables = GardenVegetable.all
    @garden = Garden.find(params[:id])
    @tasks_not_done = @garden.tasks.where(done: false).order("step, date IS NOT NULL, date ASC")
    @vegetables = Vegetable.all
    @tasks_per_veggie = @tasks_not_done.group_by(&:garden_vegetable)
  end

  def edit
    @garden = Garden.find(params[:id])
    @garden_vegetables = GardenVegetable.all
    @tasks_not_done = @garden.tasks.where(done: false).order("step, date IS NOT NULL, date ASC")
    @garden_vegetable = GardenVegetable.new
    @vegetables = Vegetable.all
    @tasks_per_veggie = @tasks_not_done.group_by(&:garden_vegetable)

  end

  def update
  end

  def new

  end

  def create

  end
end



