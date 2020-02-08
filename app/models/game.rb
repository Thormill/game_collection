class Game < ApplicationRecord
  validates :name, presence: true #, uniqueness: true

  has_many :user_games
  has_many :users, through: :user_games
end
