class CreateGpRaces < ActiveRecord::Migration
  def change
    create_table :gp_races do |t|
      t.string :name
      t.string :location
      t.string :winner_2014
      t.string :pole_2014
      t.string :fast_lap_2014
      t.integer :attendance_2014
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
