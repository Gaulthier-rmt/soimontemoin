Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :update]
  root to: "pages#home"

  resources :witnesses, only: %i[show new create edit update destroy] do
    resources :bookings, only: %i[create destroy update] do
      member do
        patch :accept
        patch :decline
      end
    end
  end

  resources :bookings, only: %i[show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/dashboard", to: "pages#dashboard", as: :dashboard


  # Defines the root path route ("/")
  # root "posts#index"
end
