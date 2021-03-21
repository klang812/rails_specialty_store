require 'rails_helper'

describe Review do

  describe 'associations' do
    it{ should belong_to(:product) }
  end
  
  describe 'validations' do
    it{ should validate_presence_of(:author) }
    it{ should validate_presence_of(:review) }
    it{ should validate_length_of(:review).is_at_least(50) }
    it{ should validate_length_of(:review).is_at_most(250) }
    it{ should validate_presence_of(:rating) }
    it{ should validate_inclusion_of(:rating).in_range(1..5) }
  end
end