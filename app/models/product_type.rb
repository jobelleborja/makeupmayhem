# frozen_string_literal: true

# Controller for product types

class ProductType < ApplicationRecord
  has_many :products, dependent: :restrict_with_exception
  validates :product_type, presence: true
end
