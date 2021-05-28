class BookingsController < ApplicationController
  before_action :set_animal, only: [:new, :create]

  def my_bookings
    @bookings = current_user.customer_bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.animal = @animal
    @booking.customer = current_user

    if @booking.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def my_owner_bookings
    @bookings = current_user.owner_bookings
  end

  private

  def set_animal
    @animal = Animal.find(params[:animal_id])
  end

  def booking_params
    params.permit(:date)
  end
end
