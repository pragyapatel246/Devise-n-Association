class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :show
  belongs_to :seat
  after_destroy :update_seat_status_to_false

    def update_seat_status_to_false
      seat.update(booking_status: false)
    end
end
