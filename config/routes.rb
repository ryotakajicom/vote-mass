Rails.application.routes.draw do
  root to: 'sites#index'
  
  get 'rankings/vote', to: 'rankings#vote'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users, only: [:new, :create]
  resources :sites, only: [:index, :show, :new, :create]
  resources :votes, only: [:create, :new]
end
