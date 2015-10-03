class Step < ActiveRecord::Base
  def self.total_steps_taken
    self.sum(:steps_taken)
  end
end
