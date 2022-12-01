class ProductType < ApplicationRecord
  has_many :products
  validates :product_type, presence: true
end
