class UsersController < ApplicationController

  def my_profile
    @time = 0
    @distance = 0
    current_user.trainings.each do |training|
      @time += training.time_in_minutes
      @distance += training.distance_meters
    end
  end

  def my_friends
    @friendships = current_user.friends
  end

  def show
    @user = User.find(params[:id])
    @time = 0
    @distance = 0
    @user.trainings.each do |training|
      @time += training.time_in_minutes
      @distance += training.distance_meters
    end
  end
end
