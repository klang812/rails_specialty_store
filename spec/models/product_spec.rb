require 'rails_helper'

describe Product do
  it{ should have_many(:reviews) }

  it("titleizes the name of a product") do
    product = Product.create({name: "cookies", cost: 5, country_of_origin: "USA"})
    expect(product.name()).to(eq("Cookies"))
  end
end