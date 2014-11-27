class AirplanesController < ApplicationController
  before_action :authenticate

  def new

  end

  def create
  	airplane = Airplane.new
  	airplane.name = params[:name]
  	airplane.rows = params[:rows]
  	airplane.columns = params[:columns]
  	airplane.save

  	redirect_to airplane_path(airplane.id)
  end

  def show
    @airplane = Airplane.find(params[:id])

  end




end