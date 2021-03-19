require 'rails_helper'

describe "the delete product process" do
  it "delete a product" do
    product = Product.new({:name => 'Spaghetti', :cost => '6', :country_of_origin => 'USA'})
    product.save
    visit products_path
    click_link 'Spaghetti'
    click_link 'Delete'
    expect(page).to have_content 'Product successfully deleted!'
    expect(page).to have_no_content 'Spaghetti'
  end  
end