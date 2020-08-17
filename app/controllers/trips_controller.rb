class TripsController < ApplicationController
	def new
	end

	def create
		@trip = Trip.new(trip_params)
 
	  	@trip.save
	  	redirect_to edit_trip_path(@trip)
	end

	def edit
		@trip = Trip.find(params[:id])
	end

	private 
		def trip_params
			params.require(:trip).permit(:name, :category)
		end


end
