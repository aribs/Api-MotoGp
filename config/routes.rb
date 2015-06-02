Rails.application.routes.draw do
  resources :teams
  resources :pilots
  match '/api/pilots/:last_name', :to => 'pilots#api', via: :all
  get '/api/pilots' =>  'pilots#all_pilots'
  match '/api/teams/:team_name', :to => 'teams#api', via: :all
  get '/api/teams' =>  'teams#all_teams'
end
