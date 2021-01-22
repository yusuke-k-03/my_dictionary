Rails.application.routes.draw do
  devise_for :users
  get 'dictionaries/index'
  root to: "dictionaries#index"
  resources :dictionaries 
  resources :questions, only: [:new, :create]
  resources :users, only: :show
  
end
