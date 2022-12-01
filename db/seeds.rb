require "open-uri"
Product.destroy_all
ProductType.destroy_all

file = File.read('db/makeup.json')
products = JSON.parse(file)

i = 0;
products.each do |product|
  if i < 100
    product_type = ProductType.find_or_create_by(
      product_type: product["product_type"]
    )

    if product_type && product_type.valid?
        create_product = product_type.products.create(
        name: product["name"],
        description: product["description"],
        price: product["price"],
        brand: product["brand"]
      )
      i+=1
  end
end
end

puts "#{Product.count} products"
puts "#{ProductType.count} types"

