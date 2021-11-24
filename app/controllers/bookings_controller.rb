class BookingsController < ApplicationController
   def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(bookings_params)
    @booking.list = @list
    if @booking.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  private

  def bookmark_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
