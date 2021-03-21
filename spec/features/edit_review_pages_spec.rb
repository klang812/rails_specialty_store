require 'rails_helper'

describe 'the edit review process' do
  before(:each) do
    @product = Product.create({:name => 'Spaghetti', :cost => '6', :country_of_origin => 'USA'})
    @review = Review.create({:author => 'Kerry', :review => 'This is some of the best spaghetti I have ever eaten!  I cannot wait to buy more!', :rating => 5, :product_id => @product.id})
    visit edit_product_review_path(@product, @review)
  end

    it "edits a review" do
      fill_in 'Author', :with => 'Kerry'
      fill_in 'Review', :with => 'This spaghetti cooks perfectly al dente and with a bit of salt is delicious!'
      fill_in 'Rating', :with => 5
      click_on 'Update Review'
      expect(page).to have_content 'Review successfully updated'
      # expect(page).to have_content 'This spaghetti cooks perfectly al dente and with a bit of salt is delicious!'
    end

    it "gives an error when no author is entered" do
      fill_in 'Author', with: ''
      fill_in 'Review', with: ''
      fill_in 'Rating', with: 2
      click_on 'Update Review'
      expect(page).to have_content "Author can't be blank"
    end
  end
  

