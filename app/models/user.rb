class User < ActiveRecord::Base
  has_one :car
  has_many :travels

  def have_car?
    car = Car.find_by(user_id: self.id)
    if car.nil?
      true
    else
      false
    end
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
