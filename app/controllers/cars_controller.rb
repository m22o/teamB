class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update]

  def new
    @car = Car.new
  end

  def show
  end

  def create
    @car = Car.create(car_params)
    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @car}
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    set_car
  end

  def update
    respond_to do |format|
      if @car.update(user_params)
        format.html { redirect_to @car, notice: 'koushin dekitayo'}
        format.json { head :no_conten}
      else
        format.html { render action: 'edit'}
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
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
