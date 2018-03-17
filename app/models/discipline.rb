class Discipline < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  has_many :trainings
end
