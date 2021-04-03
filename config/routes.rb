Rails.application.routes.draw do
  get 'timers/index'
  root "timers#index"
  resources :timers, only: :index
end
