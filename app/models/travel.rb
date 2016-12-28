class Travel < ActiveRecord::Base
  belongs_to :user
  has_many :froms
  has_many :tos
end
