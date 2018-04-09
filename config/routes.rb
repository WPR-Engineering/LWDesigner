Rails.application.routes.draw do
  resources :qors
  resources :networkings
  resources :cables
  root to: 'dashboard#index'

  resources :node_gpios
  resources :power_stations
  resources :nodes

  resources :nodes do
    member do
      get :full_history, to: 'nodes#full_history'
    end
  end


  resources :nodes do
    resources :audits, param: :audit_id do
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
