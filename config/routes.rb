Rails.application.routes.draw do
  resources :pilots
  match '/api/pilots/:last_name', :to => 'pilots#api', via: :all
  get '/api/pilots' =>  'pilots#all_pilots'
end
