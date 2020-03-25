class Role < ApplicationRecord
  belongs_to :goal
  delegate :type, :to => :goals
end
