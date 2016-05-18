Rails.application.routes.draw do
  root 'messages#index'

  namespace :api do
    resources :messages, only: [:create]
  end
end
