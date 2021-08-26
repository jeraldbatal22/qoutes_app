Rails.application.routes.draw do
  root 'qoutes#index'
  get '/qoutes' => 'qoutes#index'
  get '/qoutes/favorites' => 'qoutes#favorites'
  get '/qoutes/qoutes' => 'qoutes#random_qoutes'
  get '/qoutes/new' => 'qoutes#new'
  get '/qoutes/show/:id' => 'qoutes#show'
  post '/qoutes' => 'qoutes#create', as: 'qoute_create'
  get '/qoutes/edit/:id' => 'qoutes#edit'
  patch '/qoutes/:id' => 'qoutes#update', as: 'qoute_update'
  get '/qoutes/save/favorites/:id/:favorites' => 'qoutes#add_favorites', as: 'save_favorites'
  get '/qoutes/remove/favorites/:id/' => 'qoutes#remove_favorites', as: 'remove_favorites'
  delete '/qoutes/:id' => 'qoutes#delete'
  
end
