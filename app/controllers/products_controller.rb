class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def show
    @products = Product.find(params[:id])
  end
  def search
    search = "%#{params[:words]}%"
    @products = Product.where("title LIKE ?", search)
  end
end