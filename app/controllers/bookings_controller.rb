class BookingsController < ApplicationController
   def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(bookings_params)
    @user = current_user
    @booking.car = @car
    @booking.user = @user
    if @booking.save!
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def destroy
    @booking.destroy
    redirect_to root, notice: 'Garden was successfully destroyed.'
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
