class CreatePilots < ActiveRecord::Migration
  def change
    create_table :pilots do |t|
      t.string :last_name
      t.string :name
      t.integer :number
      t.string :team
      t.integer :n_races
      t.integer :n_victory
      t.integer :n_second_position
      t.integer :n_third_position
      t.integer :n_fastest_lap
      t.integer :n_pole_positions
      t.integer :n_championships
      t.string :url_photo

      t.timestamps null: false
    end
  end
end
