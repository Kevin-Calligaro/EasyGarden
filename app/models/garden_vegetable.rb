class GardenVegetable < ApplicationRecord
  has_many :tasks
  belongs_to :garden
  belongs_to :vegetable
end
