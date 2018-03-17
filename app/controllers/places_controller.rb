class PlacesController < ApplicationController
  def index
  	@places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      flash[:success] = "New place are added"
      redirect_to place_path
    else
      flash[:error] = "please try again"
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
    if @place.update(place_params)
      flash[:success] = "new place updated"
      redirect_to place_path(@place)
    else
      render 'edit'
    end
  end

  def destroy
    @place.destroy
    flash[:danger] = "some data are deleted"
    redirect_to place_path
  end

  private

  def place_params
    params.require(:place).permit(:city, :street, :where)
  end

  def require_admin
    if current_user && !current_user.admin?
      flash[:danger] = "Ino do Admina !!"
      redirect_to root_path
    end
  end

  def find_place
    @place = Place.find(params[:id])
  end

end