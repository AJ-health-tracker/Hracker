class CalorieIntake < ActiveRecord::Base

  def self.calorie_intake_current_day
    intake_today = self.where("created_at BETWEEN ? AND ?",
       Time.now.beginning_of_day, Time.now)
    intake_today.all.sum(:calorie_intake)
  end

end
