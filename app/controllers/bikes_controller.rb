class BikesController < ApplicationController
  def index

  end

  def new
  	@bike = Bike.new
  end

  def create
  	@bike = Bike.new bike_params
  	if @bike.save
  		redirect_to 'index'
  	else
  		render :new
  	end
  end

  private

  def bike_params
  	params.require(:bike).permit(:brand, :model, :type, :description, :year_made)
  end

end
