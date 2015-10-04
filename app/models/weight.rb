class Weight < ActiveRecord::Base
  validates :date_created, uniqueness: true
end
