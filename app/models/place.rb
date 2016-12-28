class Place < ActiveRecord::Base
	belongs_to :travel
	accepts_nested_attributes_for :travel

end
