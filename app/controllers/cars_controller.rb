class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show ]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
    @bookings = @car.bookings
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.start_date,
        to:   booking.end_date
      }
    end
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end

  def mycars
    @cars = Car.where(user:current_user)
  end

  private

  def car_params
    params.require(:car).permit(:brand, :price_per_day, :localisation, :immatriculation, :details, :model, photos: [])
  end
end
