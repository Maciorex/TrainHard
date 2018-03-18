class UsersController < ApplicationController

  def my_profile
    @time = 0
    current_user.trainings.each do |training|
      @time += training.time_in_minutes
    end
  end
end
