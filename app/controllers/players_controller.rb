class PlayersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @players = Player.all
  end

  def new
  
  end

  def create
    player = Player.new(player_params)
    #player.first_name = params[:player][:first_name]
    #player.last_name = params[:player][:last_name]

    if player.save
      redirect_to "/players"
    else
      flash[:errors] = player.errors.full_messages
      redirect_to "/players/new"
    end
  end 
  
  private
  def player_params
    params.require(:player).permit(:first_name, :last_name)
  end
end
