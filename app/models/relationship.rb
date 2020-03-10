class Relationship < ApplicationRecord
  belongs_to :vegetable1, class_name: "Vegetable"
  belongs_to :vegetable2, class_name: "Vegetable"
end
