require 'test_helper'

class WeightTest < ActiveSupport::TestCase
  def test_new_weight
    bulk = Weight.new(weight: 250)
    assert 250, bulk.weight
  end
end
