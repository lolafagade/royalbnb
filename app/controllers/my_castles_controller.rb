class MyCastlesController < ApplicationController

  def index
    @castles = Castle.all
  end

  def new
    @castle = Castle.new
  end

  def create
    @castle = Castle.new(castle_params)
    @castle.user = current_user
      if @castle.save
        flash[:notice] = 'Castle has been successfully created.'
        redirect_to my_castles_path
      else
        render :new
      end
  end

  private

  def castle_params
    params.require(:castle).permit(:name, :description, :prince, :equipment, :vehicle,:location, :photo, :price_per_night)
  end
end
