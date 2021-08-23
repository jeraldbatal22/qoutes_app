Rails.application.routes.draw do
  root "qoutes#index"
  get '/qoutes' => 'qoutes#index'
end
