Rails.application.routes.draw do
  root "qoutes#index"
  get '/qoutes' => 'qoutes#index'

  get '/qoutes/new' => 'qoutes#new'
  post '/qoutes/new' => 'qoutes#create'
end
