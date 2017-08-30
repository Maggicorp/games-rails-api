class GameSerializer < ActiveModel::Serializer
  attributes :id
  has_many :competiting_teams
end
