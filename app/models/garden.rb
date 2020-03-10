class Garden < ApplicationRecord
  has_many :vegetables, through: :plants
  belongs_to :user
end
