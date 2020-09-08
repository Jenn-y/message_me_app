class SessionsController < ApplicationController
  #before_action :user_params, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in!"
      redirect_to root_path
    else
      flash.now[:error] = "Incorrect credentials!"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out!"
    redirect_to login_path
  end

  # def user_params
  #   require[:user].permit[:username, :password]
  # end

end