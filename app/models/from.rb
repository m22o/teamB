class From < ActiveRecord::Base
  belongs_to :travel
  belongs_to :place
end
