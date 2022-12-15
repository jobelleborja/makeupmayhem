# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = Product.order("price DESC").page params[:page]
  end

  def show
    add_breadcrumb "Product Type", :product_type_path
    add_breadcrumb @product_type.product_type, "product_type/#{@product.product_type_id}"
    add_breadcrumb @product.name, :product_path
    @product = Product.find(params[:id])
  end

  def search
    search = "%#{params[:words]}%"

    @products = if params[:name][:product_type_id] == ""
      Product.where("name LIKE ?", search)
    else
    Product.where("name LIKE ? AND product_type_id = ?",
                              search, params[:name][:product_type_id])
    end
  end
end
