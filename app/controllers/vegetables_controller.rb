class VegetablesController < ApplicationController
  def index
    @vegetables = Vegetable.all
  end

  def show
    @Vegetable = Vegetable.find(params[:id])
  end
end
