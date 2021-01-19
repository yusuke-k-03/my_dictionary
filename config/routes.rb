Rails.application.routes.draw do
  get 'dictionaries/index'
  root to: "dictionaries#index"
end
