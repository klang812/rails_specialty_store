require 'rails_helper'

describe 'the add review process' do
  before(:each) do
    @product = Product.new({:name => 'Spaghetti', :cost => '6', :country_of_origin => 'USA'})
    @product.save
    visit products_path
  end

  it "adds a new review" do
    click_link 'Spaghetti'
    click_link 'Add a review'
    fill_in 'Author', :with => 'Kerry'
    fill_in 'Review', :with => 'This spaghetti cooks perfectly al dente and with a bit of salt are delicious!'
    fill_in 'Rating', :with => '5'
    click_on 'Create Review'
    expect(page).to have_content 'Review successfully added!'
    # expect(page).to have_content 'This spaghetti cooks perfectly al dente and with a bit of salt are delicious!'
  end
end
