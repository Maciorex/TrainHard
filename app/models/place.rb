class Place < ApplicationRecord
validates :city, presence: true, uniqueness: true
validates :where, presence: true, length: { minimum: 1, maximum: 300 }
end