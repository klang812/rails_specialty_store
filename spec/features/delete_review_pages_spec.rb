require 'rails_helper'

describe "the delete review process" do
  it "delete a product" do
    @product = Product.create({:name => 'Spaghetti', :cost => 6, :country_of_origin => 'USA'})
    @review = Review.create({:author => 'Kerry', :review => 'This is some of the best spaghetti I have ever eaten!  I cannot wait to buy more!', :rating => 5, :product_id => @product.id})
    visit product_review_path(@product, @review)
    click_link 'Delete review'
    expect(page).to have_content 'Review successfully deleted!'
    expect(page).to have_no_content 'Kerry'
  end  
end