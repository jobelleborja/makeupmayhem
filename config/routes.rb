Rails.application.routes.draw do
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'
  end
  root "products#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "/products", to: "products#index"
  get "/about", to: "about#index"
  resources :cart, only: %i[create destroy]
  resources :products, only: [:index, :show] do
    collection do
      get "search"
    end
  end
end