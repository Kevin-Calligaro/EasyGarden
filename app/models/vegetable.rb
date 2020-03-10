class Vegetable < ApplicationRecord
  has_many :vegetables, through: :relationships
end
