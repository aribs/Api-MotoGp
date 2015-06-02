json.array!(@teams) do |team|
  json.extract! team, :id, :team_name, :pilot1, :pilot2, :n_races, :n_victories, :n_podium, :url_photo
  json.url team_url(team, format: :json)
end
