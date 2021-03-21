require 'rails_helper'

describe "the add product process" do
  it "adds a new product" do
    review = Review.new({:author => 'Kerry', :review => 'This spaghetti cooks perfectly al dente and with a bit of salt are delicious!', :rating => 5})
    review.save
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'Spaghetti'
    fill_in 'Cost', :with => 6
    fill_in 'Country of origin', :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Spaghetti'
  end

  it "gives an error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end
end
