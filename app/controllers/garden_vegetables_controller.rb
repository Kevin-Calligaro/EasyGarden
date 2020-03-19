class GardenVegetablesController < ApplicationController

  def create

    @garden = Garden.find(params[:garden_id])
    garden_vegetables_data = JSON.parse(params["data-spot"])
    # Création des garden vege en fonction du JSON
    garden_vegetables_data.each do |garden_vege|
      garden_vegetable = GardenVegetable.new(position: garden_vege["position"], vegetable_id: garden_vege["vegetable_id"].to_i)
      garden_vegetable.garden = @garden
      unless garden_vegetable.save
        render "gardens/#{params[:garden_id]}/edit"
      end

      # Créer les tasks en fonction du type de garden vege
      build_tasks(garden_vegetable)
    end

    redirect_to garden_path(@garden)
  end

  private

  def garden_vegetable_params
    params.permit(:position, :garden_id, :vegetable_id)
  end

  def build_tasks(garden_vegetable)
    three_steps = ['tomato', 'egg-plant', 'pepper', 'onion', 'cauliflower', 'zucchini']
    two_steps_no_planting = ["carrot", "spring radish", "peas"]

    if three_steps.any? { |vegetable| garden_vegetable.vegetable.specie == vegetable }
      Task.create!(
        garden_vegetable: garden_vegetable,
        step: 1,
        action: "seeding",
        date: nil,
        done: false
      );

      Task.create!(
        garden_vegetable: garden_vegetable,
        step: 2,
        action: "planting",
        date: nil,
        done: false
      );

      Task.create!(
        garden_vegetable: garden_vegetable,
        step: 3,
        action: "harvesting",
        date: nil,
        done: false
      );

    elsif two_steps_no_planting.any? { |vegetable| garden_vegetable.vegetable.specie == vegetable }
      Task.create!(
        garden_vegetable: garden_vegetable,
        step: 1,
        action: "seeding",
        date: nil,
        done: false
      )

      Task.create!(
        garden_vegetable: garden_vegetable,
        step: 2,
        action: "harvesting",
        date: nil,
        done: false
      )

    else
      Task.create!(
        garden_vegetable: garden_vegetable,
        step: 1,
        action: "planting",
        date: nil,
        done: false
      )

      Task.create!(
        garden_vegetable: garden_vegetable,
        step: 2,
        action: "harvesting",
        date: nil,
        done: false
      )
    end
  end
end
