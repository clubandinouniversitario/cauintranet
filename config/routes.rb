Rails.application.routes.draw do
  resources :trip_categories
  resources :trips
  get 'main/index'
  get 'welcome/index'
  get 'trips/new'
  get 'trips/edit'
 
  root 'welcome#index'
end
