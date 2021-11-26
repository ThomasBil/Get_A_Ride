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

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to allmybookings_path, notice: 'Bookings was successfully canceled.'
  end

  def my_bookings
    @bookings_i_want = Booking.where(user:current_user)
    @my_cars = Car.where(user:current_user)
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "Accept"
    if @booking.save
      redirect_to allmybookings_path
    end
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "Decline"
    if @booking.save
      redirect_to allmybookings_path
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
