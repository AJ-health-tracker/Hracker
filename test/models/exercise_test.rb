require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  def test_new_exercise
    mad_gainz = Exercise.new(calories_burned: 777)
    assert 777, mad_gainz.calories_burned
  end
end
