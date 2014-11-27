class AirplanesController < ApplicationController
  def new

  end

  def create

  end

  def show/:name

    @airplane = Airplane.find(params[:name])

  end

end