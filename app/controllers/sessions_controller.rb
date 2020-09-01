class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if @user && user.authenticate(params[:password])
      session[:user_id] = user.user_id
      redirect_to players_path
    else
      flash[:errors] = ["Invalid Combination"]
      redirect_to users_path
    end
  end 
end