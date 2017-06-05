class CarsController < ApplicationController

  before_action :authenticate_user!
  def index
    @cars = Car.all
  end

  def create
    Car.create(cars_params)
    redirect_to car_path
  end

  def new
    @cars = Car.new
  end

  def edit
    @car = Car.find(params[:id])
  end

  def show

  end

  def update
    @car = Car.find(params[id])
    @car.update_attributes(car_params)
    redirect_to car_path
  end

  def destroy
    @car = Car.find(params[id])
    @car.delete
    redirect_to car_path
  end

  private
  def cars_params
    params.require(:car).permit(:name, :colour, :agency_id, :year)
  end

end
