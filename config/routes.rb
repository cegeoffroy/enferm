Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get 'messages/index'
  get 'messages/create'
  get 'conversations/index'
  get 'conversations/create'
  get 'users/show'
  get 'accounts/index'
  devise_for :users

  # Pages
  root to: 'pages#home'
  get 'feed', to: 'pages#feed'
  get 'account', to: 'accounts#index'

  resources :users, only: [:show, :index]

  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end

end
