Rails.application.routes.draw do
<<<<<<< Updated upstream
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


end
=======
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "products#index"

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
>>>>>>> Stashed changes
