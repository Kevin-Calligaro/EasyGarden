class GardensController < ApplicationController
  def show
    @garden_vegetables = GardenVegetable.all
    @garden = Garden.find(params[:id])
  end

  def edit
    @garden = Garden.find(params[:id])
    @garden_vegetables = GardenVegetable.all
  end

  def new

  end

  def create

  end
end



