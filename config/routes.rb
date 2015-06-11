Rails.application.routes.draw do
  resources :legends
  resources :gp_races
  resources :teams
  resources :pilots
  match '/api/pilots/:last_name', :to => 'pilots#api', via: :all
  get '/api/pilots' =>  'pilots#all_pilots'
  match '/api/pilots/search/:last_name', :to => 'pilots#search_pilot', via: :all
  match '/api/teams/search/:team_name', :to => 'teams#search_team', via: :all
  match '/api/legends/search/:last_name', :to => 'legends#search_legend', via: :all
  get '/api/teams/:id' => 'teams#api'
  get '/api/teams' =>  'teams#all_teams'
  get '/api/gp_races/:id' => 'gp_races#api'
  get '/api/gp_races' => 'gp_races#all_gp_races'
  get 'api/legends' => 'legends#all_legends'
  match '/api/legends/:last_name', :to => 'legends#api', via: :all
end
