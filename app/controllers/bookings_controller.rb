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
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to allmybookings_path, notice: 'Bookings was successfully canceled.'
  end

  def my_bookings
    @bookings_from = Booking.where(user:current_user)
    @my_cars = Car.where(user:current_user)
    @bookings_for = @my_cars.map { |car| car.bookings }
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
