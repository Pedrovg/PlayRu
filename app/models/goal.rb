class Goal < ApplicationRecord
  belongs_to :user
  has_one :role
  has_one :dificulty

  validates :name, presence: true
end
