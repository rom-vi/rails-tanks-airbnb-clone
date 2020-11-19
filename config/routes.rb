Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tanks do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :update, :destroy]
  get "/dashboard", to: "dashboard#index"
  get "/your_tanks", to: "your_tanks#index"
end
