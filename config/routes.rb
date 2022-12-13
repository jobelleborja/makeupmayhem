Rails.application.routes.draw do
  root "products#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "/products", to: "products#index"
  get "/about", to: "about#index"
  resources :cart, only: %i[create destroy]
  resources :checkout, only:[:create]
  resources :products, only: [:index, :show] do
    collection do
      get "search"
    end
  end
end