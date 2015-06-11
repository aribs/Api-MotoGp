class CreateLegends < ActiveRecord::Migration
  def change
    create_table :legends do |t|
      t.string :last_name
      t.string :name
      t.integer :number
      t.integer :n_races
      t.integer :n_victory
      t.integer :n_second_position
      t.integer :n_third_position
      t.integer :n_fastest_lap
      t.integer :n_pole_positions
      t.string :url_photo

      t.timestamps null: false
    end
  end
end
