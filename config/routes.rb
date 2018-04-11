Rails.application.routes.draw do
  resources :wires
  resources :qors
  resources :networkings

  #Root Route
  root to: 'dashboard#index'

  #GPIO Routes
  resources :node_gpios

  #gpio node differences paths
  resources :node_gpios do
    resources :audits, param: :audit_id do
      member do
        get :diff_gpio, to: 'history#diff_gpio'
      end
    end
  end

  #GPIO full history path
  resources :node_gpios do
    member do
      get :full_history, to: 'node_gpios#full_history'
    end
    resources :audits, param: :audit_id do
      member do
        get :diff_gpio, to: 'history#diff_gpio'

      end
    end
  end


  #Powerstation Routes
  resources :power_stations

  #gpio node differences paths
  resources :power_stations do
    resources :audits, param: :audit_id do
      member do
        get :diff_ps, to: 'history#diff_ps'
      end
    end
  end

  #GPIO full history path
  resources :power_stations do
    member do
      get :full_history, to: 'power_stations#full_history'
    end
    resources :audits, param: :audit_id do
      member do
        get :diff_ps, to: 'history#diff_ps'

      end
    end
  end


  #node routes
  resources :nodes
  #nodes full history paths
  resources :nodes do
    member do
      get :full_history, to: 'nodes#full_history'
    end
    resources :audits, param: :audit_id do
      member do
        get :diff, to: 'history#diff'

      end
    end
  end

  #node differences paths
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
