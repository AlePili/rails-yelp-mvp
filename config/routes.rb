Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :restaurants do
  #   resources :reviews, only: [:new, :create]
  # end 

  root to: "restaurants#index"
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end
end
