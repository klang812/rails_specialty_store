require 'rails_helper'

describe 'the add review process' do
  before(:each) do
    User.destroy_all
    user = User.create!(:email => 'test1@example.com', :password => 'f4k3p455w0rd', :admin => true)
    login_as(user, :scope => :user)
    @product = Product.create({:name => 'Spaghetti', :cost => 6, :country_of_origin => 'USA'})
    visit products_path
  end
  after(:each) do 
    Warden.test_reset!
  end

  it "adds a new review" do
    click_link 'Spaghetti'
    click_link 'Add a review'
    fill_in 'Author', :with => 'Kerry'
    fill_in 'Review', :with => 'This spaghetti cooks perfectly al dente and with a bit of salt is delicious!'
    fill_in 'Rating', :with => 5
    click_on 'Create Review'
    expect(page).to have_content 'Review successfully added!'
    expect(page).to have_content 'Kerry'
  end

  it "gives an error when no author is entered" do
    click_link 'Spaghetti'
    click_link 'Add a review'
    click_on 'Create Review'
    expect(page).to have_content "Author can't be blank"
  end
end
