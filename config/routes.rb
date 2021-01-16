Rails.application.routes.draw do
  devise_for :users

  # Pages
  root to: 'pages#home'
  get 'feed', to: 'pages#feed'

end
