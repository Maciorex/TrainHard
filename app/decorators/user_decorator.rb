class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    return "Anonymous" unless object.first_name || object.last_name
    "#{object.first_name} #{object.last_name}"
  end
end
