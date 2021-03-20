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

50.times do |index|
 product = Product.create!(name: Faker::Food.vegetables,
                        cost: Faker::Commerce.price(range: 0..10.0, as_string: true),  
                        country_of_origin: Faker::Address.country)
  5.times do |index|
    Review.create!(author: Faker::Book.author, content_body: Faker::Lorem.paragraph(sentence_count: 4, random_sentences_to_add: 2), rating: Faker::Number.between(from: 1, to: 5), product_id: product.id)
  end
end

p "Created #{Product.count} products and #{Review.count} reviews."