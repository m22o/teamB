class Travel < ActiveRecord::Base
  belongs_to :user
  belongs_to :from
  belongs_to :to
end
