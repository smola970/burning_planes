class ReservationsController < ApplicationController
  before_action :authenticate

  def new

  end

  def create
    @reservation = Reservation.new
    @reservation.user_id = current_user.id
    @reservation.flight_id = params[:flight_id]
    @reservation.seat = '2a'

raise

    @reservation.save


    redirect_to '/'
  end

end

