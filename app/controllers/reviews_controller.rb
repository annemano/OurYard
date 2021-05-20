class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @listing = @booking.listing
    if @review.save
      modify_avg_rating(@listing)
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  private

  def modify_avg_rating(listing)
    sum = 0
    listing.reviews.each { |review| sum += review.rating }
    avg = (sum / listing.reviews.length.to_f)
    listing.update(avg_rating: avg.round(2))
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
