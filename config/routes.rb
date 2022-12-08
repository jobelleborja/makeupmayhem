Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "products#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "/products", to: "products#index"
  get "/about", to: "about#index"
  resources :products, only: [:index, :show] do
    collection do
      get "search"
    end
  end
end
