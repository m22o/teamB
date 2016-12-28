class Car < ActiveRecord::Base
	belongs_to :user
	accepts_nested_attributes_for :user
	
	def new_car 
		car = Car.create(:car_number => @car_num, :car_color => @car_color) 
	end
end
