Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "admin/authors#index"    
  # root "authors#index"
  # get '/authors', to: 'authors#index', as: :getname
  # get '/authors/:id', to: 'authors#show'
  # get '/authors/new', to: 'authors#new'

  # resources :authors
  
  namespace :admin do
    resources :authors
  end
  # namespace :admin do 
  #   resources :authors
  # end
  # scope module: 'admin' do
  #   resources :authors
  # end
  # scope shallow_path: "se" do
    # resources :authors do 
    #   resources :books ,shallow: true
    # end
  # end
  # scope shallow_prefix: "se" do
  #   resources :authors do 
  #     resources :books ,shallow: true
  #   end
  # end
  # resources :comments
  # resources :books, only: [:index, :new, :create]
  # concern :commentable do 
  #   resources :comments 
  # end
  # resources :authors, concerns: :commentable
  # resources :books, concerns: :commentable
  # resources :authors do 
  #   member do 
  #     get 'preview'
  #   end
  # end
    # resources :authors do 
    # collection do 
    #   get 'preview'
    # end
    # get 'preview', on: :new

  # end
    # get 'authors(/:id)', to: 'authors#display'
   # get 'authors/:id/:user_id', to: 'authors#show'
  # get 'exit', to: 'sessions#destroy', as: :logout
  # match 'authors', to: 'authors#show', via: [:get, :post]
  # get 'authors/:id', to: 'authors#show', constraints: { id: /[A-Z]\d{5}/ }
# get 'authors/new', to: redirect('/authors')
# resources :authors

# resolve("Author") { [:author] }
# resources :photos, controller: 'authors'
# resources :user_permissions, controller: 'admin/authors'
# resources :authors, constraints: { id: /[A-Z][A-Z][0-9]+/ }
# resources :authors, as: 'images'
# resources :authors, path_names: { new: 'make', edit: 'change' }

# scope 'admin' do
#   resources :authors, as: 'admin_photos'
# end
# resources :authors
# scope ':username' do
#   resources :authors
# end
# resources :authors, only: [:index, :show]
# resources :authors, except: :destroy
# scope 'admin' do
#   resources :authors, as: 'admin_photos'
# end

# resources :authors
  # scope(path_names: { new: 'neu', edit: 'bearbeiten' }) do
  #   resources :authors, path: 'kategorien'
  # end
  # resources :authors, param: :identifier
   
end
