require 'rails_helper'

describe Product do

  describe 'associations' do
    it{ should have_many(:reviews) }
  end

  describe 'validations' do
    it{ should validate_presence_of(:name) }
    it{ should validate_presence_of(:cost) }
    it{ should validate_presence_of(:country_of_origin) }
  end

  describe 'Product#titleize' do
    it("titleizes the name of a product and country of origin") do
      product = Product.create({name: "cookies", cost: 5, country_of_origin: "united states"})
      expect([product.name, product.country_of_origin]).to(eq(["Cookies", "United States"]))
    end
  end
end