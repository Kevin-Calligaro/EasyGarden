class Vegetable < ApplicationRecord
  # has_many :relationships
  has_many :vegetables, through: :relationships
end
