# require 'rails_helper'

# describe "the add review process" do
#   it "adds a new review" do
#     product = Product.new({:name => 'Spaghetti', :cost => '6', :country_of_origin => 'USA'})
#     product.save
#     visit product_reviews_path
#     click_link 'Add a review'
#     fill_in 'Author', :with => 'Kerry'
#     fill_in 'Content body', :with => '123456789101112131415161718192021222324252627282930'
#     fill_in 'Rating', :with => '5'
#     click_on 'Create Category'
#     expect(page).to have_content 'Review successfully added!'
#     expect(page).to have_content '123456789101112131415161718192021222324252627282930'
#   end
# end
