class AddNameToCompetitingTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :competiting_teams, :name, :string
  end
end
