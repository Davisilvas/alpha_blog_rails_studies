Rails.application.routes.draw do
  root to: "pages#home"

  resources :articles
  #resources :articles, only: [:show, :index, :new, :create, :edit, :update]

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # delete 'logout', to: 'sessions#destroy'
end
