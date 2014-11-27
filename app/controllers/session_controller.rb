class SessionController < ApplicationController
  skip_before_action :authenticate

  def new

  end

  def create

    user = User.where(:username => params[:username]).first
    # user = User.find_by(:username => params[:username])

    if user.present? && user.authenticate(params[:password])
      # correct password
      session[:user_id] = user.id
      redirect_to '/'
    else
      # incorrect password
      redirect_to login_path, :notice => 'incorrect login or password'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end