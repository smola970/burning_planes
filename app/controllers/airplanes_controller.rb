class AirplanesController < ApplicationController
  before_action :authenticate

  def new

  end

  def create

  end

  def show/:name

    @airplane = Airplane.find(params[:name])

  end

end