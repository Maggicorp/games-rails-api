class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :jersey_number
end
