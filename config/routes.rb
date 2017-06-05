Rails.application.routes.draw do
  devise_for :users
  # Root page needed for devise
  root to: 'home#index'

  # CRUD aagencias
  resources :agencies

  # CRUD cars
  resources :cars
end
