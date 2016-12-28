class User < ActiveRecord::Base
	has_one :car
	accepts_nested_attributes_for :car

	has_one :travel
	accepts_nested_attributes_for :travel
end
	
