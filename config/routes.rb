Rails.application.routes.draw do
  resources :teams
  resources :pilots
  match '/api/pilots/:last_name', :to => 'pilots#api', via: :all
  get '/api/pilots' =>  'pilots#all_pilots'
  match '/api/teams/search/:team_name', :to => 'teams#search_team', via: :all
  get '/api/teams/:id' => 'teams#api'
  get '/api/teams' =>  'teams#all_teams'
end
