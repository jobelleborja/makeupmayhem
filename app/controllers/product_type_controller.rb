# frozen_string_literal: true

class ProductTypeController < ApplicationController
  def index
    @product_type = ProductType.all
  end
end
