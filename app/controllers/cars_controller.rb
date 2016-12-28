class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update]

  def new
    @car = Car.new
  end

  def show
  end

  def create
    @car = Car.create(car_params)
    @car.update(user_id: current_user.id)
    current_user.update(car_id: @car.id)
    if @car.save
      redirect_to @car
    else
      render 'new'
    end
  end

  def edit
    set_car
  end

  def update
    if @car.update(car_params)
      redirect_to @car
    else
      render 'new'
    end
  end

  private
  def car_params
    params.require(:car).permit(:car_number,:color)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
