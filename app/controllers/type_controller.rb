# frozen_string_literal: true

class TypeController < ApplicationController
  def index
    @type = ProductType.all
  end
end
