class BookingsController < ApplicationController
  before_action :set_booking, only: [:confirm, :refuse]
  def create
    @castle = Castle.find(params[:castle_id])
    @booking = Booking.new(booking_params)
    @booking.castle = @castle
    @booking.user = current_user
    @booking.total_price = (@booking.chech_out_date - @booking.check_in_date).to_i * @booking.castle.price_per_night # TODO: NEEDS TO BE FIXED
    @booking.status = "pending"

    if @booking.save
      redirect_to bookings_path
    else
      render 'new'
    end
  end

  def index
    @bookings = Booking.all
  end

  def confirm
    @booking.status = 'Confirmed'
    @booking.save
    redirect_to bookings_path
  end

  def refuse
    @booking.status = 'Fuck off bitch'
    @booking.save
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:check_in_date, :chech_out_date, :special_request)
  end
end
