class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :status, inclusion: { in: %w[pending confirmed rejected] }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :occupancy, presence: true

  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end
end
