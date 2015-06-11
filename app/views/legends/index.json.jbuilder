json.array!(@legends) do |legend|
  json.extract! legend, :id, :last_name, :name, :number, :n_races, :n_victory, :n_second_position, :n_third_position, :n_fastest_lap, :n_pole_positions,:n_championships, :url_photo
  json.url legend_url(legend, format: :json)
end
