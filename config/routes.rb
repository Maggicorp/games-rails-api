Rails.application.routes.draw do
  resources :games, only: [:index, :show]
  resources :teams, only: [:index, :show]
  resources :competiting_teams, only: [:index, :show]
end
