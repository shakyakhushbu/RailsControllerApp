Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "authors#index"
  # get '/authors', to: 'authors#index'
  # get '/authors/:id', to: 'authors#show'
  # get '/authors/new', to: 'authors#new'


  # resources :authors do 
  #   resources :books 
  # end
  namespace :admin do
    resources :articles, :comments
  end
end
