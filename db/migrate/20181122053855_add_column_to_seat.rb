class AddColumnToSeat < ActiveRecord::Migration[5.2]
  def change
    add_reference :seats, :show, index: true
    add_column :seats, :booking_status, :boolean, default: false
  end
end
