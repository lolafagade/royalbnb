class CastlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      sql_query = " \
        castles.location @@ :query \
        OR users.name @@ :query \
      "
      @castles = Castle.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @castles = Castle.all
    end
    @castles = Castle.where.not(latitude: nil, longitude: nil)
    @markers = @castles.map do |castle|
      {
        lat: castle.latitude,
        lng: castle.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { castle: castle })
      }
    end
  end

  def show
    @castle = Castle.find(params[:id])
    @booking = Booking.new
    @review = Review.new
  end
end
