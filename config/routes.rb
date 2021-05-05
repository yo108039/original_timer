Rails.application.routes.draw do
  resources :meetings
  get 'logs/index'
  devise_for :users
  root "timers#index"
  resources :timers, only: [:index, :create, :new]
  resources :logs, only: [:index]
end
