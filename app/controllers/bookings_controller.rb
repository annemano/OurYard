class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = Booking.all
  end

  # def new
  #   @listing = Listing.find(params[:listing_id])
  #   @booking = Booking.new
  # end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @listing = Listing.find(params[:listing_id])
    @booking.listing = @listing
    if @booking.save
      redirect_to bookings_path
    else
      render '/listings/show'
    end
  end

  def show
  end

  def edit
    @listing = @booking.listing
  end

  def update
    if @booking.update(booking_params)
      @booking.update(status: "pending")
      redirect_to bookings_path
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  def confirm
    @booking = Booking.find(params[:id])
    @booking.update(status: "confirmed")
    redirect_to my_listings_path
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.update(status: "rejected")
    redirect_to my_listings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :occupancy)
  end
end
