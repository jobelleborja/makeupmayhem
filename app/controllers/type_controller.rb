class TypeController < ApplicationController
  def index
    @type = ProductType.all
  end
end
