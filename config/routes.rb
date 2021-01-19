Rails.application.routes.draw do
  get 'users/show'
  get 'accounts/index'
  devise_for :users

  # Pages
  root to: 'pages#home'
  get 'feed', to: 'pages#feed'
  get 'account', to: 'accounts#index'

  resources :users, only: [:show, :index]

end
