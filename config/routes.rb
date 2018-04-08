Rails.application.routes.draw do
  root to: 'dashboard#index'

  resources :node_gpios
  resources :power_stations
  resources :nodes

  get 'search/index'
  post 'search/query'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
