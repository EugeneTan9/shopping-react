# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
100.times do |i|

  name = FFaker::Product.product_name
  price = rand(2.00..30.00).floor(2)
  url = FFaker::Image.url
  description = FFaker::Lorem.description

  Product.create({name: name, price: price, image_url: url, description: description})
end