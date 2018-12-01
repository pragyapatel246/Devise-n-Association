class BookingsController < ApplicationController
  after_action :update_booking_to_advance_booking, only: [:create_booking]

  def index
    @bookings = current_user.bookings
  end

  def create_booking
    @seat = Seat.find(params[:seat_id])
    show = @seat.show
    booking = @seat.build_booking(user_id: current_user.id, show_id: show.id)
    booking.save
    redirect_to bookings_index_path
  end

  def delete
    booking = Booking.find(params[:id])
    booking.destroy
    redirect_to bookings_index_path
  end


  private
  def update_booking_to_advance_booking
    movie = @seat.show.movie
    if Movie.not_released.ids.include?(movie.id)
      @seat.booking.update(advance_booking: true)
      else
        @seat.booking.update(advance_booking: false)
      end
  end
end
