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
    filter = "%#{params[:type]}%"
    @products = Product.where("name LIKE :search AND product_type LIKE :search",
                              search: "%#{search}%")
  end
end
