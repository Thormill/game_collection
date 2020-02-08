class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @games = Game.all
  end

  def notice_show
    redirect_to root_path, notice: "tadada"
  end

  def favorite
    id = params[:id]
    game = Game.find(id)

    current_user.favor_game(game)
    redirect_to root_path, notice: :ok
  end
end
