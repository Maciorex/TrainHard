class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :trainings

  def full_name
    return ("#{first_name} #{second_name}") if (first_name || second_name)
    "Anonymous"
  end
end
