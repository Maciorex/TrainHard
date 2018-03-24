class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :trainings
  has_many :friendships
  has_many :friends, through: :friendships
  include UsersHelper
end
