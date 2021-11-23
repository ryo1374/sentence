Rails.application.routes.draw do
  devise_for :users
  root to: "texts#index"
  resources :users, only: [:edit, :update, :show]
  resources :texts
end
