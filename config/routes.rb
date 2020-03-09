Rails.application.routes.draw do
  devise_for :users
  root 'tasks#index'
  resources :tasks do
  end
end
