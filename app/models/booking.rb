class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :user

  validates :status, inclusion: { in: %w[pending confirmed rejected] }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
