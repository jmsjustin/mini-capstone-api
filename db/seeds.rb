# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Supplier.create!(name: "Mom's Sock Emporium", email: "mse@example.com", phone_number: "(897) 555-6485")
Supplier.create!(name: "Dad's Apperal Plus", email: "alldap@example.com", phone_number: "(332) 555-1349")

Product.create!(supplier_id: 1, name: "Mom Socks", price: 7.99, description: "Fuzzy things you put on your feet")
Product.create!(supplier_id: 2, name: "Dad Shoes", price: 129.99, description: "One shoe that defies all odds")
Product.create!(supplier_id: 2, name: "Jorts", price: 12.99, description: "Stay cool while looking cool")

Image.create!(product_id: 1, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHcnXKt-hFFYd_MndD4rFR9gThYEAghKuDgg&usqp=CAU")
Image.create!(product_id: 2, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDIIKeRKMjkJLsDhTYJ49coOP-E9ZIqhXl-w&usqp=CAU")
Image.create!(product_id: 3, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLUYOEQ1gJgebY5EMZJr8KTd67CW3qAA78VA&usqp=CAU")

Category.create!(name: "Footwear")
Category.create!(name: "Legwear")
Category.create!(name: "Clothes")

CategoryProduct.create!(category_id: 1, product_id: 1)
CategoryProduct.create!(category_id: 3, product_id: 1)
CategoryProduct.create!(category_id: 1, product_id: 2)
CategoryProduct.create!(category_id: 3, product_id: 2)
CategoryProduct.create!(category_id: 2, product_id: 3)
CategoryProduct.create!(category_id: 3, product_id: 3)
