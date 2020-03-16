class Task < ApplicationRecord
  STARTING_ACTIONS = ["seeding", "planting"]
  belongs_to :garden_vegetable

  def mark_as_done!
    self.done = true
    self.date = DateTime.now
    self.save!

    set_following_tasks_due_dates if STARTING_ACTIONS.include? self.action
  end

  def followings_tasks
    self.garden_vegetable.tasks.where.not(id: self.id).where("step > ? ", self.step).order(step: :asc)
  end

  private

  def set_following_tasks_due_dates
    if self.action == "planting" && self.step == 1
      harvesting = followings_tasks.find_by(step: 2)
      harvesting.date = self.date + (self.garden_vegetable.vegetable.harvesting_start - self.garden_vegetable.vegetable.planting_start).days
      harvesting.save!
    elsif self.action == "seeding" && self.step == 1 && followings_tasks.find_by(step: 2).action == "harvesting"
      harvesting = followings_tasks.find_by(step: 2)
      harvesting.date = self.date + (self.garden_vegetable.vegetable.harvesting_start - self.garden_vegetable.vegetable.seeding_start).days
      harvesting.save!
    else
      planting = followings_tasks.find_by(step: 2)
      planting.date = self.date + (self.garden_vegetable.vegetable.planting_start - self.garden_vegetable.vegetable.seeding_start).days
      planting.save!

      harvesting = followings_tasks.find_by(step: 3)
      harvesting.date = self.date + (self.garden_vegetable.vegetable.harvesting_start - self.garden_vegetable.vegetable.seeding_start).days
      harvesting.save!
    end
  end
end
