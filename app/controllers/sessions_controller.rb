class SessionsController < ApplicationController

  skip_before_action :authenticate, only: [:new, :create]
  layout "login"

  def new

  end

  # POST / sessions
  def create
    user = User.find_by(email: params[:email])
    if user && user.active && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now.alert = "Email or Password is invalid, really I dont know what one."
      render "new"
    end
  end

  # DELETE /sessions/1
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "You have been loggged out!"
  end
end
