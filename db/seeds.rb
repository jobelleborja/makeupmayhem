require "open-uri"
Product.destroy_all
ProductType.destroy_all

products = JSON.parse(URI.open("https://makeup-api.herokuapp.com/api/v1/products.json").read)

i = 0;
products.each do |product|
  if i < 100
    product_type = ProductType.find_or_create_by(product_type: product_type["product_type"])
      create_product = product_type.products.create(
        id: product["id"],
        name: product["name"],
        product_type: product["product_type"],
        price: product["price"]
      )
      i+=1
  end
end

