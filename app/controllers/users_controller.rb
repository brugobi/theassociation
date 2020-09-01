class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def create
    user = User.new(users_params)
    if user.save
      session[:user_id] = user.id
      redirect_to players_path
    else
      flash[:errors] = user.errors.full_messages
      redirect_to users_path
    end
  end

  private
  def users_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
