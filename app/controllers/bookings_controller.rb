class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:check_in_date, :check_out_date).permit(:special_request)
  end
end
