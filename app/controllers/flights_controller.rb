class FlightsController < ApplicationController
  before_action :authenticate

	def new
		@airplanes = Airplane.all
	end

	def create
		flight = Flight.new(flight_params)
		flight.save
		redirect_to flight_path(flight.id)
	end

	def show
		@flight = Flight.find(params[:id])
		plane_id = @flight.plane_id
		@rows = @flight.airplane.rows
		columns = @flight.columns


		@seats
	end



	def search
		@flights = Flight.all
	end

	def reservation
		# get current user, seat, and flight

	end


	private

	def flight_params

		 params.require(:flight).permit(:flight_number, :origin, :destination, :date, :plane_id)

	end

end