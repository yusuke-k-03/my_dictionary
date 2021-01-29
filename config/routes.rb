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
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'

  resources :users, only: :show 

  
  
  
end
