Rails.application.routes.draw do
  root to: 'sites#index'
  
  resources :sites, only: [:index, :show, :new, :create]
end
