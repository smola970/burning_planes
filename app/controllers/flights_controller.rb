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
		#num_of_rows = @flight.airplane.rows
		# num_of_columns = @flight.airplane.columns

		# rows = (1..num_of_rows).to_a
		# rows.map {|i| i.to_s}
		# columns = ('a'..'z').to_a.first(num_of_columns)

		# @seats_array = []

		# for r in 0...(rows.length)

	 #  	for c in 0...(columns.length)
	 #  		@seats_array << "#{rows[r]}#{columns[c]}"
	  	# end

		# end

	end

	def index
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