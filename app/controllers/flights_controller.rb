class FlightsController < ApplicationController
	def new
		@flight = Flight.new
	end

	def create
		flight = Flight.new(flight_params)
		flight.save
		raise
	end


	private

	def flight_params
		 params.require(:flight).permit(:flight_number, :origin, :destination, :date)		
	end

end