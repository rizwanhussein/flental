class BookingsController < ApplicationController
  def show_one
    @bookings = Booking.where(user: current_user)
  end

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @flat = Flat.find(params[:flat_id])
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    @booking.user = current_user
    if @booking.save
      redirect_to flats_path
    else
      render "bookings/new", status: :unprocessable_entity
    end
  end
 def bookingconfirm

 end
  def show
    @booking = User.find(params[:user_id]).bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:startdate, :enddate)

  end
end
