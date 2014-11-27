class FlightsController < ApplicationController
	def new
	end

	def create
		flight = Flight.new(flight_params)
		flight.save
		redirect_to flight_path(flight.id)
	end

	def show
		@flight = Flight.find(params[:id])
		@rows = @flight.rows
		columns = @flight.columns


		@seat_letter =
	end

	def search
		@flights = Flight.all
	end

	def reservation
		# get current user, seat, and flight

	end


	private

	def flight_params
		 params.require(:flight).permit(:flight_number, :origin, :destination, :date)
	end

end