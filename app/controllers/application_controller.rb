class ApplicationController < ActionController::Base
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
end
