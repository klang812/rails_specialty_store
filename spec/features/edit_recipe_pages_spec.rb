require 'rails_helper'

describe "the edit product process" do
  it "edit a product" do
    product = Product.new({:name => 'Spaghetti', :cost => '6', :country_of_origin => 'USA'})
    product.save
    visit products_path
    click_link 'Spaghetti'
    click_link 'Edit'
    fill_in 'Name', :with => 'Lasagna'
    fill_in 'Cost', :with => '5'
    fill_in 'Country of origin', :with => 'USA'
    click_on 'Update Product'
    expect(page).to have_content 'Product successfully updated'
    expect(page).to have_content 'Lasagna'
  end
end
