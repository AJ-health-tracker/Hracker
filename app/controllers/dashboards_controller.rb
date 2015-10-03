class DashboardsController < ApplicationController
  def index
    @all_steps_ever = Step.total_steps_taken
    @calories_eaten = CalorieIntake.calorie_intake_current_day
    @calories_burned = Exercise.calories_burned_current_day
  end

  def show
  end
end
