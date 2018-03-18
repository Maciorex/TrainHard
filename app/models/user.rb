class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :trainings
  has_many :friendships
  has_many :friends, through: :friendships
  include UsersHelper

  def self.search_user(params)
    params.strip.downcase!
    (first_name_matches(params) + second_name_matches(params) + email_matches(params)).uniq
  end

  def self.first_name_matches(params)
    matches('first_name', params)
  end

  def self.second_name_matches(params)
    matches('second_name', params)
  end

  def self.email_matches(params)
    matches('email', params)
  end

  def self.matches(key, params)
    User.where("#{key} like ?", "%#{params}%")
  end
end
