class User < ActiveRecord::Base
  has_one :car
  has_many :travels

  def have_car?
    self.car.nil?
  end

#とりあえず自作auth 簡単に
  def authenticate(pass)
    if self.password == pass
      true
    else
      false
    end
  end
end
