class Training < ApplicationRecord
  belongs_to :user
  belongs_to :discipline

  def self.from_search(params)
    params.strip.downcase!
    to_return = (training_name_match(params) + training_discipline_match(params) + training_date_match(params))
    return to_return
  end

  def training_name_match(params)

  end

  def training_discipline_match(params)

  end

  def training_date_match(params)

  end
end
