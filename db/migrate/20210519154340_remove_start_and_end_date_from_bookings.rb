class RemoveStartAndEndDateFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :start_date, :time
    remove_column :bookings, :end_date, :time
  end
end
