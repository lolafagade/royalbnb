class BookingsController < ApplicationController
  def create
    @castle = Castle.find(params[:castle_id])
    @booking = Booking.new(booking_params)
    @booking.castle = @castle
    @booking.user = current_user
    @booking.total_price = 100 # TODO: NEEDS TO BE FIXED
    @booking.status = "pending"

    if @booking.save
      redirect_to bookings_path
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in_date, :chech_out_date, :special_request)
  end
end
