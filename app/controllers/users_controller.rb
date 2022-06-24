class UsersController < ApplicationController
  before_action :signup_redirect, only: [:new, :create]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome to the MessageME app #{@user.username}, you have been sign up!"
      redirect_to root_path
    else
      flash[:error] = "Some problem with your signup!"
      redirect_to signup_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
  
  def signup_redirect
    if logged_in?
      flash[:error] = "You have to logout first"
      redirect_to root_path
    end
  end
end