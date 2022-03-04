Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do 
    get '/authors', to: "authors#index"
    post '/authors', to: "authors#create"
    get '/authors/:id', to: "authors#show"
    put '/authors/:id', to: "authors#update"
    delete 'authors/:id', to: "authors#destroy"
  end
end
