class ApplicationController < ActionController::Base
<<<<<<< HEAD
<<<<<<< Updated upstream
=======
=======
>>>>>>> ActiveAdmin
  before_action :initialize_session
  helper_method :cart

  private

  def cart
    # pass an array of product ids and get back collection of products
    Product.find(session[:shopping_cart])
  end

  def initialize_session
    # will initialize the visit count to zero for new users
    session[:shopping_cart] ||= [] # empty array of product IDs
  end
<<<<<<< HEAD

  def load_cart
    # @cart = Product.find(session[:cart])
    # Product.all.pluck(:id) => 1, 2
    # Product.find(1, 2, 3) => error
    # Product.where(id: [1, 2, 3]) => 1, 2
    @cart = Product.where(id: session[:cart])
  end
>>>>>>> Stashed changes
=======
>>>>>>> ActiveAdmin
end
