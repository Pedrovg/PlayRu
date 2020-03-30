class Goal < ApplicationRecord
  belongs_to :user
  has_one :dificulty

  validates :name, presence: true
  delegate :experience, to: :user
end
