Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  resources :comments, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :users, only: [:new, :create]
end
