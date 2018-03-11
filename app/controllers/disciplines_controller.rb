class DisciplinesController < ApplicationController
  before_action :require_admin, only:[:new, :create, :edit, :update, :destroy]
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

  def edit
    @discipline = Discipline.find(params[:id])
  end

  def update
    @discipline = Discipline.find(params[:id])
    if @discipline.update(discipline_params)
      flash[:success] = "ŻEŚ TRZASNĄŁ APDEJTA"
      redirect_to discipline_path(@discipline)
    else
      render 'edit'
    end
  end

  private

  def discipline_params
    params.require(:discipline).permit(:name, :description)
  end

  def require_admin
    if current_user && !current_user.admin?
      flash[:danger] = "Ino do Admina !!"
      redirect_to root_path
    end
  end
end
