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

  def first_tasks_urgency
    # [1, nil, 3]
    if self.garden_vegetable.vegetable.planting_start == nil
      if DateTime.now < self.garden_vegetable.vegetable.seeding_start
        "not urgent"
      elsif DateTime.now >= self.garden_vegetable.vegetable.seeding_end - 14
        "very urgent"
      elsif DateTime.now <= self.garden_vegetable.vegetable.seeding_start + ((self.garden_vegetable.vegetable.harvesting_start - self.garden_vegetable.vegetable.seeding_start) / 2)
        "urgent"
      elsif DateTime.now >= self.garden_vegetable.vegetable.seeding_start
        "urgent soon"
      end
    # [1, 2, 3]
    elsif self.garden_vegetable.vegetable.seeding_start != nil && self.garden_vegetable.vegetable.planting_start != nil
      if DateTime.now < self.garden_vegetable.vegetable.seeding_start
        "not urgent"
      elsif DateTime.now >= self.garden_vegetable.vegetable.seeding_end - 7
        "very urgent"
      elsif DateTime.now <=self.garden_vegetable.vegetable.seeding_start + ((self.garden_vegetable.vegetable.planting_start - self.garden_vegetable.vegetable.seeding_start) / 2)
        "urgent"
      elsif DateTime.now >= self.garden_vegetable.vegetable.seeding_start
        "urgent soon"
      end
    # [nil, 2, 3]
    elsif self.garden_vegetable.vegetable.seeding_start == nil
      if DateTime.now < self.garden_vegetable.vegetable.planting_start
        "not urgent"
      elsif DateTime.now >= self.garden_vegetable.vegetable.planting_end - 7
        "very urgent"
      elsif DateTime.now <= self.garden_vegetable.vegetable.planting_start + ((self.garden_vegetable.vegetable.harvesting_start - self.garden_vegetable.vegetable.planting_start) / 2)
        "urgent"
      elsif DateTime.now >= self.garden_vegetable.vegetable.planting_start
        "urgent soon"
      end
    end
  end

  def urgency
    if self.date != nil
      if DateTime.now < self.date
        "not urgent"
      elsif DateTime.now >= self.date + 14
        "very urgent"
      elsif DateTime.now >= self.date + 7
        "urgent"
      elsif DateTime.now <= self.date + 7
        "urgent soon"
      end
    end
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
