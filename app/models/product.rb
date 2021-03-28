class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true

  scope :highest_rated, -> (rating = 1) { where("rating = ?", rating).joins(:reviews).limit(5)}
  scope :lowest_price, -> (price = 1) {where("cost = ?", price).limit(5)}
  
  before_save(:titleize_product)

  private
    def titleize_product
      self.name = self.name.titleize
      self.country_of_origin = self.country_of_origin.titleize
    end
  end
