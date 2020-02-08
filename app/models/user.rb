class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_games
  has_many :games, through: :user_games

  def favor_game(game)
    ug = user_games.find_or_initialize_by(game_id: game.id)
    ug.update(favored: true)
  end

  def favored?(game)
    ug = user_games.find_or_initialize_by(game_id: game.id)
    ug.favored
  end
end
