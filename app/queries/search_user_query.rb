class SearchUserQuery
  attr_reader :params
  KEYS = %w(first_name second_name email)

  def initialize(params)
    @params = params
  end

  def result
    User.where(sql_query, *query_params)
  end

  private

  def sql_query
    KEYS.map do |key|
      "#{key} like ?"
    end.join(" OR ")
  end

  def query_params
    ["%#{params}%"] * KEYS.length
  end
end
