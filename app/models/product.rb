class Product < ApplicationRecord
  has_one :product_type, as: :product_type
  validates :id, presence: true
  validates :name, presence: true
  validates :price, presence: true

def self.search(search)
  if search
    product_name = Product.find_by(name: product)
    if search
      self.where(id: product)
    else
      @Products = Product.all
    end
  else
    @Products = Product.all
  end
end
end

