class ProductType < ApplicationRecord
  has_many :products
  validates :product_type, presence: true
<<<<<<< HEAD
  validates :id, presence: true
=======
>>>>>>> ActiveAdmin
end
