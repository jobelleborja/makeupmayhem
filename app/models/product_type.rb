class ProductType < ApplicationRecord
  has_many :products
  validates :product_type, presence: true
  validates :id, presence: true
end
