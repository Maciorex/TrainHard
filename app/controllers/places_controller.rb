class PlacesController < ApplicationController

  def index
    @place = Place.all
  end

  def create
    @place = Place.new(params[:place])
    if @place.save
      redirected_to @place
    else
      render :action => "new"
    end
  end
  # def new @place = Place.new
  # end

end
