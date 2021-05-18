class ListingsController < ApplicationController
  before_action :set_listing, only: %i[show edit update destroy]

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @user = current_user
    @listing.user = @user
    if @listing.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @listing.update(listing_params)
      redirect_to listing_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    @listing.destroy
    redirect_to listings_path
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:title, :description, :address, :price_per_hour, :photo)
  end
end
