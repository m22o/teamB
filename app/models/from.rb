class From < ActiveRecord::Base
  has_many :travel
  belongs_to :place
end
