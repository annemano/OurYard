class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :status, inclusion: { in: %w[pending confirmed rejected] }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :occupancy, presence: true
end
