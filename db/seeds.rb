# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Product.destroy_all
Review.destroy_all

50.times do 
  Product.create!(name: Faker::Food.vegetables,
                        cost: Faker::Commerce.price(range: 0..10.0, as_string: true),  
                        country_of_origin: Faker::Address.country)
  5.times do 
    Review.create!(author: Faker::Book.author, content_body: Faker::Lorem.sentence(word_count:10), rating: Faker::Number.between(from: 1, to: 5))
  end
end

p "Created #{Vegetables.count} products and #{Commerce.count} reviews."