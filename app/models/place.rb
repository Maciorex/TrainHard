class Place < ApplicationRecord
  validates :country, presence: true, uniqueness: true
  validates :city, presence: true, uniqueness: true
  validates :resort, presence: true, uniqueness: true
  validates :otherPlace, presence: true, uniqueness: true
  validates :gpsCoordinates, presence: true, uniqueness: true
end
