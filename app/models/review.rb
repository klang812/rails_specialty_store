class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :review, presence: true
  validates_length_of :review, minimum: 50
  validates_length_of :review, maximum: 250
  validates :rating, presence: true
  validates :rating, :inclusion => 1..5

end
  
  
  

