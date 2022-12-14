<<<<<<< HEAD
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
=======

class ProductsController < ApplicationController
  # def index
  #   @products = Product.where("brand LIKE '%colourpop%'")
  # end
  def index
    @products = Product.order("price DESC").page params[:page]
  end
  def show
    @product = Product.find(params[:id])
  end
  def search
    search = "%#{params[:words]}%"
    @products = Product.where("name LIKE ?", search)
>>>>>>> ActiveAdmin
  end
end