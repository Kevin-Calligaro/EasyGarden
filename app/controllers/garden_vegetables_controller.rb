class GardenVegetablesController < ApplicationController

  def create

    @garden = Garden.find(params[:garden_id])
    garden_vegetables_data = JSON.parse(params["data-spot"])

    garden_vegetables_data.each do |garden_vege|
      garden_vegetable = GardenVegetable.new(position: garden_vege["position"], vegetable_id: garden_vege["vegetable_id"].to_i)
      garden_vegetable.garden = @garden
      unless garden_vegetable.save
        render "gardens/#{params[:garden_id]}/edit"
      end
    end

    redirect_to garden_path(@garden)
  end

  private

  def garden_vegetable_params
    params.permit(:position, :garden_id, :vegetable_id)
  end
end
