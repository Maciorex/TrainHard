class DisciplinesController < ApplicationController
  def index
    @disciplines = Discipline.all
  end

  def new
    @discipline = Discipline.new
  end

  def create
    @discipline = Discipline.new(discipline_params)
    if @discipline.save
      flash[:success] = "ŻEM DODOŁ DYSCYPLINA"
    else
      render 'new'
    end
  end

  private

  def discipline_params
    params.require(:discipline).permit(:name, :description)
  end

end
