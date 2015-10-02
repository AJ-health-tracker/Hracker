class Step < ActiveRecord::Base
  def self.total_steps_taken
    self.count
  end
end
