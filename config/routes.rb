Rails.application.routes.draw do
  resources :headquarters
  resources :addresses
  resources :neighborhoods
  resources :cities
  root 'departments#index'
  resources :departments
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
