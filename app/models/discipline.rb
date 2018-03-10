class Discipline < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
end
