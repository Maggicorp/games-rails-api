class CreatePastGames < ActiveRecord::Migration[5.0]
  def change
    create_table :past_games do |t|
      t.integer :score
      t.string :other_team
      t.integer :other_team_score
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
