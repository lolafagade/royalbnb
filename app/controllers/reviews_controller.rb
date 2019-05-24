class ReviewsController < ApplicationController
  def create
    @castle = Castle.find(params[:castle_id])
    @review = Review.new(review_params)
    @review.castle = @castle
    if @review.save
      respond_to do |format|
      format.html { redirect_to castle_path(@castle) }
      format.js
      end
    else
      respond_to do |format|
        format.html { render 'castles/show' }
        format.js
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
