class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :title, :description, :address, :price_per_hour, presence: true
  validates :title, :address, uniqueness: true
  validates :price_per_hour, numericality: { only_integer: false }
  validates :description, length: { maximum: 500,
                                    too_long: "%{count} characters is the maximum allowed" }
  validates :title, length: { maximum: 60,
                              too_long: "%{count} characters is the maximum allowed" }

  include PgSearch::Model
  pg_search_scope :search_by_address,
                  against: [:address],
                  using: {
                    tsearch: { prefix: true }
                  }
end
