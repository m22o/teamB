class Place < ActiveRecord::Base
  has_many :froms
  has_many :to
end
