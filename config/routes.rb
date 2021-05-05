Rails.application.routes.draw do
  resources :timers, only: [:index, :create, :new]
  resources :logs, only: [:index]
  resources :meetings
  devise_for :users
  root "timers#index"
end