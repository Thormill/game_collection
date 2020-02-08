require "rails_helper"

RSpec.describe User, type: :model do
  context 'game link methods' do
    let!(:user) do
      User.create(
        email: 'test@mail.ru',
        password: 'testtest',
        password_confirmation: 'testtest'
      )
    end

    let!(:game) do
      Game.create(name: "game1")
    end

    it 'can add to favorites' do
      expect(user.user_games).to be_empty

      user.favor_game(game)
      expect(user.user_games).not_to be_empty
    end

    it 'can add to played' do
      expect(user.user_games).to be_empty
      user.favor_game(game)
      expect(user.user_games).not_to be_empty
      user.play_game(game)
      expect(user.user_games.count).to eq 1
    end

    it 'helpers' do
      user.favor_game(game)
      expect(user.favored?(game)).to be_truthy
      expect(user.played?(game)).to be_falsy
    end
  end
end