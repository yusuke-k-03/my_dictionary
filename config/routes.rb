Rails.application.routes.draw do
  devise_for :users
  get 'dictionaries/index'
  root to: "dictionaries#index"
  resources :dictionaries
end
