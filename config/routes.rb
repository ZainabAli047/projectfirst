Rails.application.routes.draw do
  devise_for :users
  root "welcomes#index"

  resources :welcomes, only: [:edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end