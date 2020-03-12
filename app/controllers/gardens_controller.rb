class GardensController < ApplicationController
  def show
    @garden = Garden.find(params[:id])
  end

  def new

  end

  def create

  end
end
