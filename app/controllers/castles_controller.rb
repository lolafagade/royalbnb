class CastlesController < ApplicationController
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
  end

  def show
    @castle = Castle.find(params[:id])
  end
end
