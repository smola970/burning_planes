class UsersController < ApplicationController
  skip_before_action :authenticate, :only => [:new, :create]

  def index
    @users = User.all
  end

  def search
    @users = User.where :username => params[:search]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

      if @user.save
        session[:user_id] = @user.id
        redirect_to '/'
      else
        render :new
      end
      # raise
  end

  def show
    @user = User.find(current_user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to login_path
  end

private

 def user_params
    params.permit(:username, :password, :password_confirmation)
  end

end