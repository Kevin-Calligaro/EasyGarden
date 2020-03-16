class Task < ApplicationRecord
  STARTING_ACTIONS = ["seeding", "planting"]
  belongs_to :garden_vegetable

  def mark_as_done!
    self.done = true
    self.date = DateTime.now

    set_due_dates_for_following_tasks if self.action.included_in? STARTING_ACTIONS
  end

  def followings_tasks
    self.garden_vegetable.tasks.where.not(id: self.id).where("step > ? ", self.step).order(step: :asc)
  end


  private

  def set_following_tasks_due_dates
    if self.where(step: 1).action == "seeding"
      self.where(step: 2).date = self.where(step: 1).date + (self.garden_vegetable.vegetable.planting_start)
  end
end
