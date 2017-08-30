class Team < ApplicationRecord
  has_many :players
  has_many :competiting_teams
  has_many :past_games
end
