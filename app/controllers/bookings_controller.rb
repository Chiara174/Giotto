class BookingsController < ApplicationController

    def create
    @booking = Booking.new(params_booking)
    @booking.user = current_user
    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end
end
