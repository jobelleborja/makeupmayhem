class Product < ApplicationRecord
  belongs_to :product_type

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :brand, presence: true
end
