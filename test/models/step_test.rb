require 'test_helper'

class StepTest < ActiveSupport::TestCase

  def test_new_calorie_intake
    new_step = Step.new(steps_taken: 555)
    assert 555, new_step.steps_taken
  end

end
