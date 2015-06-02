class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :pilot1
      t.string :pilot2
      t.integer :n_races
      t.integer :n_victories
      t.integer :n_podium
      t.string :url_photo

      t.timestamps null: false
    end
  end
end
