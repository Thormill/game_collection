class CreateUserGames < ActiveRecord::Migration[6.0]
  def change
    create_table :user_games do |t|
      t.integer :user_id, null: false
      t.integer :game_id, null: false
      t.boolean :owned, default: false
      t.boolean :wanted, default: false
      t.boolean :played, default: false
      t.boolean :favored, default: false

      t.timestamps
    end

    add_index :user_games, [:user_id, :game_id], unique: true
  end
end
