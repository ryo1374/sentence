Rails.application.routes.draw do
  devise_for :users
  get 'sentences/index'
  root to: "sentences#index"
end
