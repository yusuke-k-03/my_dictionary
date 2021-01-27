Rails.application.routes.draw do
  devise_for :users
  get 'dictionaries/index'
  root to: "dictionaries#index"
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
