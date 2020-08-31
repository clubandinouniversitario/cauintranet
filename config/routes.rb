Rails.application.routes.draw do
  devise_for :users
  resources :trip_categories
  resources :trips
  get 'main/index'
  get 'welcome/index'
  get 'trips/new'
  get 'trips/edit'
  get 'devise/registrations/new'
  root 'users#home'
  get '/home' => 'users#home'
  post '/create' => 'users#create'
  post '/signin' => 'users#signin'
  get 'signup' => 'users#new'
  post '/new' => 'users#new'
  get 'devise/new' => 'devise/registrations#new'

  match '*path' => 'users#home', :via => :get
 
  # root 'welcome#index'
end
