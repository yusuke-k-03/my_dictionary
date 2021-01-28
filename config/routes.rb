Rails.application.routes.draw do
  devise_for :users
  root to: "dictionaries#index"
  get 'dictionaries/index'
  
  resources :dictionaries do
    collection do
      get 'search'
    end
  end
 

  
  resources :questions do
    resources :answers, only: :create
  end
  resources :users, only: :show 
  
end
