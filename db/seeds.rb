# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.create(name: "Mom Socks", price: 7.99, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHcnXKt-hFFYd_MndD4rFR9gThYEAghKuDgg&usqp=CAU", description: "Fuzzy things you put on your feet")

Product.create(name: "Dad Shoes", price: 129.99, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDIIKeRKMjkJLsDhTYJ49coOP-E9ZIqhXl-w&usqp=CAU", description: "One shoe that defies all odds")

Product.create(name: "Jorts", price: 12.99, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLUYOEQ1gJgebY5EMZJr8KTd67CW3qAA78VA&usqp=CAU", description: "Stay cool while looking cool")

Supplier.create(id: 1, name: "Mom's Sock Emporium", email: "mse@example.com", phone_number: "(897) 555-6485")

Supplier.create(id: 2, name: "Dad's Apperal Plus", email: "alldap@example.com", phone_number: "(332) 555-1349")
