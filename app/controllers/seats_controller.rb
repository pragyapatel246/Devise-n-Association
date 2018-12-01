class SeatsController < ApplicationController

  def update_seat
    seat = Seat.find(params[:id])
    @show = seat.show
    seat.update(booking_status: true)
    redirect_to bookings_create_path(:seat_id => seat.id)
  end
end
