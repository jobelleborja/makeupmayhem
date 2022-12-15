# frozen_string_literal: true

# holds sesssions for class

class ApplicationController < ActionController::Base
  add_breadcrumb "home", :root_path
  protect_from_forgery with: :null_session
  before_action :initialize_session
  helper_method :cart

  private

  def cart
    Product.find(session[:shopping_cart])
  end

  def initialize_session
    session[:shopping_cart] ||= []
  end
end
