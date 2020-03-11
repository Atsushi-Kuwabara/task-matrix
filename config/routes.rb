Rails.application.routes.draw do
  devise_for :users
  root 'tasks#index'
  get 'users/log_out', to: 'users#destroy'
  resources :users do
  end
  resources :tasks do
  end
end
