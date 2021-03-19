class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :content_body, presence: true
  validates_length_of :content_body, minimum: 50
  validates_length_of :content_body, maximum: 250
  validates :rating, presence: true
  validates :rating, :inclusion => 1..5

  # before_save(:titleize_review, presence: author)

  # private
  #   def titleize_review
  #     self.author = self.author.titleize
  #   end
  end
  
  
  

