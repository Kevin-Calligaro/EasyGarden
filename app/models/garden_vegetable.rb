class GardenVegetable < ApplicationRecord
  belongs_to :garden
  belongs_to :vegetable

  has_many :tasks, dependent: :destroy
end
