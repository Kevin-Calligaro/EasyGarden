class Vegetable < ApplicationRecord
  has_many :garden_vegetables

  def relationships
    Relationship.where("vegetable1_id = :id OR vegetable2_id = :id", id: id)
  end

  def friends
    vegetable_ids = relationships.where(status: 'friend').pluck(:vegetable1_id, :vegetable2_id).flatten
    Vegetable.where.not(id: id).where(id: vegetable_ids)
  end

  def enemies
    vegetable_ids = relationships.where(status: 'enemy').pluck(:vegetable1_id, :vegetable2_id).flatten
    Vegetable.where.not(id: id).where(id: vegetable_ids)
  end
end

# rails c
# veggie = Vegetable.first
# veggie.vegetalbes.friend
