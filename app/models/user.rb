class User < ActiveRecord::Base
  has_one :car, dependent: :destroy
  has_many :travels, dependent: :destroy
end
