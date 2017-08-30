class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.references :team, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.integer :jersey_number

      t.timestamps
    end
  end
end
