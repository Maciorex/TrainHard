class UsersController < ApplicationController

  def my_profile
    @time = 0
    @distance = 0
    current_user.trainings.each do |training|
      @time += training.time_in_minutes
      @distance += training.distance_meters
    end
  end

  def my_friends; end
end
