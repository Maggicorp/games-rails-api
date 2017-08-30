class PastGameSerializer < ActiveModel::Serializer
  attributes :id, :other_team, :other_team_score, :score
end
