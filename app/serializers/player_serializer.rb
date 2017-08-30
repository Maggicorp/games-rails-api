class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :team_id, :jersey_number
end
