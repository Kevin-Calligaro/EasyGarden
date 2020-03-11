class Garden < ApplicationRecord
  belongs_to :user
  has_many :garden_vegetables, dependent: :destroy
  has_many :vegetables, through: :garden_vegetables
  has_many :tasks,      through: :garden_vegetables
end
