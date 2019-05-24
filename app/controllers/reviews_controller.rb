class ReviewsController < ApplicationController
  def create
    @castle = Castle.find(params[:castle_id])
    @review = Review.new(review_params)
    @review.castle = @castle
    if @castle.save
      redirect_to castle_path(@castle)
    else
      render 'castle/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
