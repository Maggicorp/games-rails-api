class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :players, :past_games
  # has_many :competiting_teams
end
