json.array!(@pilots) do |pilot|
  json.extract! pilot, :id, :last_name, :name, :number, :team, :n_races, :n_victory, :n_second_position, :n_third_position, :n_fastest_lap, :n_pole_positions, :n_championships, :url_photo
  json.url pilot_url(pilot, format: :json)
end
