class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @furniture = Furniture.find(params[:furniture_id])
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.user = current_user
    @furniture = Furniture.find(params[:furniture_id])
    @booking.furniture = @furniture
    @booking.status = "pending"
    if @booking.save!
      redirect_to furniture_path(@furniture)
    else
      render :new
    end
  end




  private

  def params_booking
    params.require(:booking).permit(:start_date, :end_date)
  end

end
