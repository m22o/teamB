class CarsController < ApplicationController

	def create 
		@car = Car.create(car_params)
		redirect_to action: "users/show"
	end

	def new
		@car = Car.new()
	end
	private

	def car_params
		params[:car].permit(nil,:car_number,:color)
	end
end
