require 'rails_helper'

describe "the delete review process" do
  before(:each) do
    User.destroy_all
    user = User.create!(:email => 'test1@example.com', :password => 'f4k3p455w0rd', :admin => true)
    login_as(user, :scope => :user)
  end
  after(:each) do 
    Warden.test_reset!
  end

  it "delete a product" do
    @product = Product.create({:name => 'Spaghetti', :cost => 6, :country_of_origin => 'USA'})
    @review = Review.create({:author => 'Kerry', :review => 'This is some of the best spaghetti I have ever eaten!  I cannot wait to buy more!', :rating => 5, :product_id => @product.id})
    visit product_review_path(@product, @review)
    click_link 'Delete review'
    expect(page).to have_content 'Review successfully deleted!'
    expect(page).to have_no_content 'Kerry'
  end  
end