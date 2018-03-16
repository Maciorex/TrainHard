module UserHelper
  def full_name
    return ("#{first_name} #{second_name}") if (first_name || second_name)
    "Anonymous"
  end
end
