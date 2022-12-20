Rails.application.routes.draw do
  get 'welcome/index'
 resources :sessions, :only => [:new, :create, :destroy]
  get 'users/index'
  get '/signup',  :to => 'users#new'
  get '/signin',  :to => 'sessions#new'
  get '/signout', :to => 'sessions#destroy'
  resources :users
  get 'friend/input'
  get 'friend/view'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "welcome#index"
  # Defines the root path route ("/")
  # root "articles#index"
end




