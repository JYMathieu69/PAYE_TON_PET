class BookingsController < ApplicationController
  # aka index
  def my_bookings
    @bookings = Booking.all
  end
end
