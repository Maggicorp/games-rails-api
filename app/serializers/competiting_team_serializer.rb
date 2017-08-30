class CompetitingTeamSerializer < ActiveModel::Serializer
  attributes :id, :score, :name, :game_id, :team_id
end
