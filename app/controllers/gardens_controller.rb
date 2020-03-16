class GardensController < ApplicationController
  def show
    @garden_vegetables = GardenVegetable.all
    @garden = Garden.find(params[:id])
    @tasks = Task.all
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



