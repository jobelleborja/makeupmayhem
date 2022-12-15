require "open-uri"
Product.destroy_all
ProductType.destroy_all
AdminUser.destroy_all

# file = File.read('db/makeup.json')
# products = JSON.parse(file)

products = JSON.parse(URI.open("https://makeup-api.herokuapp.com/api/v1/products.json").read)

i = 0
products.each do |product|
  next unless i < 100

  product_type = ProductType.find_or_create_by(
    product_type: product["product_type"]
  )

  next unless product_type && product_type.valid?

  create_product = product_type.products.create(
    name:        product["name"],
    description: product["description"],
    price:       product["price"],
    brand:       product["brand"],
    image_link:  product["image_link"]
  )
  i += 1
end

puts "#{Product.count} products"
puts "#{ProductType.count} types"

if Rails.env.development?
  AdminUser.create!(email: "admin@example.com", password: "password",
                    password_confirmation: "password")
end
