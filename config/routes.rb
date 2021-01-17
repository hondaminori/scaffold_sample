Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :users

  get 'home/index'
  get 'home/show'

end
