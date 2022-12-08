
class ProductsController < ApplicationController
  # def index
  #   @products = Product.where("brand LIKE '%colourpop%'")
  # end
  def index
    @products = Product.page params[:page]
  end
  def show
    @product = Product.find(params[:id])
  end
  def search
    search = "%#{params[:words]}%"
    @products = Product.where("name LIKE ?", search)
  end
end