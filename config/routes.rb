Rails.application.routes.draw do
  devise_for :users
  root "timers#index"
  resources :timers, only: :index
end
