class BikesController < ApplicationController
	def index
		@bikes = Bike.all
		@hash = Gmaps4rails.build_markers(@bikes) do |bike, marker|
			marker.lat bike.latitude
			marker.lng bike.longitude
			marker.infowindow render_to_string(:partial => "/bikes/infowindow", :locals => { :bike => bike})
		end

	end

	def show
		@bike = Bike.find params[:id]
	end

	def new
		@bike = Bike.new
	end

	def create
		@bike = Bike.new bike_params
		if @bike.save
			redirect_to bikes_path
		else
			render :new
		end
	end

	def edit
		@bike = Bike.find params[:id]
	end

	def update
		@bike = Bike.find params[:id]
		if @bike.update bike_params
			redirect_to bikes_path
		else
			render :edit
		end
	end

	def destroy
		@bike = Bike.find params[:id]
		@bike.destroy
		redirect_to bikes_path	
	end

	private

	def bike_params
		params.require(:bike).permit(:brand, :category, :description, :year_made, :latitude, :longitude, :address)
	end

end
