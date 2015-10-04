require 'test_helper'

class CalorieIntakeTest < ActiveSupport::TestCase
  
  def test_new_calorie_intake
    new_meal = CalorieIntake.new(calorie_intake: 900)
    assert 900, new_meal.calorie_intake
  end

end
