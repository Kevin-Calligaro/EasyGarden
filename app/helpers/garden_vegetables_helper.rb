module GardenVegetablesHelper
  def garden_veggie_urgency_class(garden_veggie, tasks)
    return 'urgency-1-area' if tasks.nil? || tasks.empty?
    task = tasks.first

    return 'urgency-1-area' if !(task.step > 1 && task.date != nil || task.step == 1 && task.date == nil)
    if task.step == 1
      case task.first_tasks_urgency
        when "not urgent"
          'urgency-1-area'
        when "very urgent"
          'urgency-4-area'
        when "urgent"
          'urgency-3-area'
        when "urgent soon"
          'urgency-2-area'
      end
    elsif task.step > 1 && task.date != nil
      if task.step
        case task.urgency
          when "not urgent"
            'urgency-1-area'
          when "very urgent"
            'urgency-4-area'
          when "urgent"
            'urgency-3-area'
          when "urgent soon"
            'urgency-2-area'
        end
      end
    end
  end
end
