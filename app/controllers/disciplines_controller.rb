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
      redirect_to disciplines_path
    else
      flash[:error] = "DAŁ ŻEŚ CIAŁA"
      render 'new'
    end
  end

  def show
    @discipline = Discipline.find(params[:id])
  end

  private

  def discipline_params
    params.require(:discipline).permit(:name, :description)
  end
end
