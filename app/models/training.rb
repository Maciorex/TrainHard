class Training < ApplicationRecord
  belongs_to :user
  belongs_to :discipline

  def self.from_search(params)
    params.strip.downcase!
    to_return = (training_name_match(params) + training_discipline_match(params) + training_date_match(params))
    return nil unless to_return
    to_return
  end

  def self.training_name_match(params)
    matches('name', params)
  end

  def self.training_discipline_match(params)
    matches('discipline.name', params)
  end

  def self.training_date_match(params)
    matches('dateoftraining', params)
  end

  def self.matches(field, params)
    Traning.where("#{field} like ?", "#{params}")
  end
end
