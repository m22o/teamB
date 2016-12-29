class To < ActiveRecord::Base
  has_many :travel
  belongs_to :place
end
