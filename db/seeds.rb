require "open-uri"
Products.destroy_all
Product_Type.destroy_all
Orders.destroy_all
Users.destroy_all

products = JSON.parse(URI.open("https://makeup-api.herokuapp.com/api/v1/products.json").read)

# puts villagers["wol12"]["id"]
i = 0;
products.each do |product|
  if i < 100
    gender = Gender.find_or_create_by(title: product["product_type"])
      create_product= product_type.products.create(
        id: product["id"],
        title: product["name"]
      )
      i+=1
  end
end

