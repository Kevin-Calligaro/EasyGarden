class Vegetable < ApplicationRecord
  has_many :vegetables, through: :relationships
  has_many :garden_vegetables
end
