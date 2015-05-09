Rails.application.routes.draw do
  root to: 'static#home'

  resources :users
  resources :user_sessions
  resources :actors

  get 'creators/player_character' => 'creators#player_character'
  get 'creators/calculate_character_stats' => 'creators#calculate_character_stats'

  get 'login' => 'user_sessions#new', as: :login
  post 'logout' => 'user_sessions#destroy', as: :logout

  get '/:page' => 'static#show'
end
