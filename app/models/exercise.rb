class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  def self.calories_burned_current_day
    burned_today = self.where("created_at BETWEEN ? AND ?",
       Time.now.beginning_of_day, Time.now)
    burned_today.all.sum(:calories_burned)
  end
end
