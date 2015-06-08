json.array!(@gp_races) do |gp_race|
  json.extract! gp_race, :id, :name, :location, :winner_2014, :pole_2014, :fast_lap_2014, :attendance_2014, :latitude, :longitude
  json.url gp_race_url(gp_race, format: :json)
end
