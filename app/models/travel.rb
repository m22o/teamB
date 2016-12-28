class Travel < ActiveRecord::Base
	belongs_to :user
	accepts_nested_attributes_for :user

	has_many :place
	accepts_nested_attributes_for :place

end
