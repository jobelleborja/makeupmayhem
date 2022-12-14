Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< Updated upstream
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


end
=======
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "products#index"

=======
  root "products#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

>>>>>>> ActiveAdmin
  get "/products", to: "products#index"
  get "/about", to: "about#index"
  resources :cart, only: %i[create destroy]
  resources :checkout, only:[:create]
  resources :products, only: [:index, :show] do
    collection do
      get "search"
    end
  end
<<<<<<< HEAD
end
>>>>>>> Stashed changes
=======
end
>>>>>>> ActiveAdmin
