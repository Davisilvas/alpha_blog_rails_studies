Rails.application.routes.draw do
  root to: "pages#home"

  resources :articles
  #resources :articles, only: [:show, :index, :new, :create, :edit, :update]

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
