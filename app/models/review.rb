class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :content_body, true
  validates :content_body, minimum: 50, maximum: 250
  validates :rating, true
  
  before_save(:titleize_review, presence: author)

  private
    def titleize_review
      self.name = self.name.titleize
    end
  end

end