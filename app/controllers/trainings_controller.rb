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

  def search
    if params[:training].blank?
      flash[:danger] = "Empty search string"
    else
      @training = Training.from_search(params[:training])
      flash[:danger] = "No matching training" if @training.blank?
    end
    respond_to do |format|
      format.html { render(:text => "not implemented") }
      format.js { render partial: "trainings/result" }
    end
  end

  private

  def trainings_params
    params.required(:training).permit(:name)
  end

end
