class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    return "Anonymous" unless object.first_name || object.second_name
    "#{object.first_name} #{object.second_name}"
  end
end
