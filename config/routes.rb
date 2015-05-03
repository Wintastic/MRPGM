Rails.application.routes.draw do
  resources :player_characters

  resources :actors

  get 'user_sessions/new'

  get 'user_sessions/create'

  get 'user_sessions/destroy'

  root to: 'static#home'

  resources :users
  resources :user_sessions
  get 'login' => 'user_sessions#new', as: :login
  post 'logout' => 'user_sessions#destroy', as: :logout


  get '/:page' => 'static#show'
end
