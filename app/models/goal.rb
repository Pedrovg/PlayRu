class Goal < ApplicationRecord
  belongs_to :user
  has_one :difficulty
  has_one :class

  validates :name, presence: true
end
