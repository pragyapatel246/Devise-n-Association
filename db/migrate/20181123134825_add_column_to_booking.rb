class AddColumnToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :advance_booking, :boolean
  end
end
