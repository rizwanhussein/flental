class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]


  def home
  end

  def index
    # @flats = Flat.all
    if params[:query].present?
      @flats = Flat.search_by_street_address_and_description(params[:query])
    else
      @flats = Flat.all
    end
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    if @flat.save!
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    flat = Flat.find(params[:id])
    flat.update(strong_params)
    redirect_to flat_path(flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to root_path
  end

  def another_action
  end

  def action
  end

  private


  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :street_address, :description, :capacity, :photo)
  end

end
