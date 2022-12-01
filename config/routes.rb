Rails.application.routes.draw do
  root "products#index"

  get "/products", to: "products#index"
  # get "/about", to: "about#index"
  resources :products, only: [:index, :show] do
    collection do
      get "search"
    end
  end
end