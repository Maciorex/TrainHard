class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :trainings
  has_many :friendships
  has_many :friends, through: :friendships
  include UsersHelper

  def self.search_user(params)
    params.strip.downcase!
    to_return = (first_name_matches(params) + second_name_matches(params) + email_matches(params))
    return to_return
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
    User.where("#{key} like ?", "#{params}")
  end
end
