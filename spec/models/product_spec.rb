require 'rails_helper'

describe Product do
  it{ should have_many(:reviews) }
  it{ should validate_presence_of(:name) }
  it{ should validate_presence_of(:cost) }

  it("titleizes the name of a product and country of origin") do
    product = Product.create({name: "cookies", cost: 5, country_of_origin: "united states"})
    expect([product.name, product.country_of_origin]).to(eq(["Cookies", "United States"]))
  end
end