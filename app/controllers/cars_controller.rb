class CarsController < ApplicationController

  before_action :authenticate_user!
  def index
    @cars = Car.all
  end

  def create
    @car = Car.create(cars_params)
    if @car.save
      redirect_to cars_path
    else
      render :new
    end
  end

  def new
    @car = Car.new
    @agency = Agency.all
  end

  def edit
    @car = Car.find(params[:id])
  end

  def show
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update_attributes(cars_params)
    redirect_to car_path
  end

  def destroy
    @car = Car.find(params[:id])
    @car.delete
    redirect_to car_path
  end

  private
  def cars_params
    params.require(:car).permit(:name, :colour, :agency_id, :year)
  end

end
