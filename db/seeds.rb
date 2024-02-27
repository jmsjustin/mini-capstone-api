# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.create(name: "Socks", price: 7.99, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHcnXKt-hFFYd_MndD4rFR9gThYEAghKuDgg&usqp=CAU", description: "Fuzzy things you put on your feet")
