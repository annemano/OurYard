class Listing < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :title, :description, :address, :price_per_hour, presence: true
  validates :title, :address, uniqueness: true
  validates :price_per_hour, :avg_rating, numericality: { only_integer: false }
  validates :description, length: { maximum: 500,
                                    too_long: "%{count} characters is the maximum allowed" }
  validates :title, length: { maximum: 60,
                              too_long: "%{count} characters is the maximum allowed" }
end
