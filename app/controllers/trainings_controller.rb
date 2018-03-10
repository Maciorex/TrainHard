class TrainingsController < ApplicationController
  def index
    @trainings = current_user.trainings.all
  end
  def new
    @training = current_user.trainings.new
  end
  def show
    @training = current_user.trainings.find(params[:id])
  end
  def create
    current_user.training.create(trainings_params)
    redirect_to user_trainings_path(current_user)
  end
  def trainings_params
    params.required(:training).permit(:name)
  end
end