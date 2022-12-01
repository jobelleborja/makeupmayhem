
class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end
  def search
    search = "%#{params[:words]}%"
    @products = Product.where("name LIKE ?", search)
  end
end