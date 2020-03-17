class GardensController < ApplicationController
  def show
    @garden_vegetables = GardenVegetable.all
    @garden = Garden.find(params[:id]
    @tasks = Task.all #a enlever plus tard si pas besoin --Kevin
    @tasks_not_done = @garden.tasks.where(done: false).order("date IS NOT NULL, date ASC")

  end

  def edit
    @garden = Garden.find(params[:id])
    @garden_vegetables = GardenVegetable.all
    @vegetables = Vegetable.all

  end

  def new

  end

  def create

  end
end



