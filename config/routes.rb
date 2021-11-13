Rails.application.routes.draw do
  get 'sentences/index'
  root to: "sentences#index"
end
