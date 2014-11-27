class UsersController < ApplicationController
  skip_before_action :authenticate, :only => [:new, :create]

  def index
    @users = User.all
  end

  def search
    @users = User.where :name => params[:search]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:name]
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_path
      else
        render :new
      end
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