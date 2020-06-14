class Player < ApplicationRecord
  validates_presence_of :name

  has_many :players_games
  has_many :games, through: :players_games
end
