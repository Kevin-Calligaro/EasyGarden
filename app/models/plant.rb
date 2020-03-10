class Plant < ApplicationRecord
  belongs_to :vegetable
  belongs_to :garden
end
