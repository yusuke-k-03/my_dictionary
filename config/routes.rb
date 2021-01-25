Rails.application.routes.draw do
  devise_for :users
  get 'dictionaries/index'
  root to: "dictionaries#index"
  resources :dictionaries 
  resources :questions do
    resources :answers, only: :create
  end
  resources :users, only: :show
  
end
