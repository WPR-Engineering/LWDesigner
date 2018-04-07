Rails.application.routes.draw do
  root to: 'dashboard#index'
  
  resources :node_gpios
  resources :power_stations
  resources :nodes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
