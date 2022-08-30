Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/theaters', to: 'theaters#index'
  get '/theaters/:id', to: 'theaters#show'
end
