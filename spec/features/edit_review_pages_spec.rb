require 'rails_helper'

describe 'the edit review process' do
  before(:each) do
    User.destroy_all
    user = User.create!(:email => 'test1@example.com', :password => 'f4k3p455w0rd', :admin => true)
    login_as(user, :scope => :user)
    @product = Product.create({:name => 'Spaghetti', :cost => 5, :country_of_origin => 'USA'})
    @review = Review.create({:author => 'Kerry', :review => 'This is some of the best spaghetti I have ever eaten!  I cannot wait to buy more!', :rating => 5, :product_id => @product.id})
    visit edit_product_review_path(@product, @review)
  end
  after(:each) do 
    Warden.test_reset!
  end

    it "edits a review" do
      fill_in 'Review', :with => 'This spaghetti cooks perfectly al dente and with a bit of salt is delicious!'
      click_on 'Update Review'
      expect(page).to have_content 'Review successfully updated'
      expect(page).to have_content 'Kerry'
    end

    it "gives an error when no author is entered" do
      fill_in 'Author', with: ''
      click_on 'Update Review'
      expect(page).to have_content "Author can't be blank"
    end
  end
  

