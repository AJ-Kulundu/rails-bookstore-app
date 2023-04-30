Rails.application.routes.draw do
  get 'reviews/create'
  devise_for :users
  # Defines the root path route ("/")
  root "home#index"
  # Define resource
  resources :authors

  resources :books do
    resources :reviews, only: [:create]
  end
  
end
