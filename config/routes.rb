Rails.application.routes.draw do
  root to: 'dashboard#index'

  resources :node_gpios
  resources :power_stations
  resources :nodes do
    resources :audits do
      member do
        get :diff, to: 'history#diff'
      end
    end
  end

  get 'search/index'
  post 'search/query'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
