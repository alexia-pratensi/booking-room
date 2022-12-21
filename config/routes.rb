Rails.application.routes.draw do
  devise_for :users
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  root to: "rooms#index"
  get '/dashboard', to: "pages#dashboard"
  delete "bookings/:id", to: "pages#destroy", as: :destroy_booking


  resources :rooms, only: [:index, :show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:edit, :update]
end
