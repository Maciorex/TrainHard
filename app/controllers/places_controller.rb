class PlacesController < ApplicationController

  def index
    @place = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      flash[:success] = "Place dodany"
      redirect_to places_path
    else
      flash[:error] = "smuteczek"
      render 'new'
    end
  end

  def show
    @place = Place.find(params[:id])
  end


  private

  def place_params
    params.require(:place).permit(:country, :city, :resort, :otherPlace, :gpsCoordinates)
  end
end
