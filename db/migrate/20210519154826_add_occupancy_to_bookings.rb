class AddOccupancyToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :occupancy, :integer
  end
end
