Rails.application.routes.draw do
  root to: 'sites#index'
  
  get 'rankings/vote', to: 'rankings#vote'
  
  resources :sites, only: [:index, :show, :new, :create]
  resources :votes, only: [:create, :new]
end
