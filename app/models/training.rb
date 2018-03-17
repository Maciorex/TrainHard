class Training < ApplicationRecord
  belongs_to :user
  belongs_to :discipline

  def self.from_search(params)
    params.strip.downcase!
    to_return = (training_name_match(params) + training_discipline_match(params) + training_date_match(params))
    return to_return
  end

  def self.training_name_match(params)
    matches('name', params)
  end

  def self.training_discipline_match(params)
    params.capitalize!
    Training.joins(:discipline).where(disciplines: {:name =>  "#{params}"})
  end

  def self.training_date_match(params)
    matches('date_of_training', params)
  end

  def self.matches(field, params)
    Training.where("#{field} like ?", "#{params}")
  end
end
