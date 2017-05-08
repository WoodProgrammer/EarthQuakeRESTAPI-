class Quakes < ApplicationRecord
  has_many :quakes
  def search(city_id,siddet)
    x=Quake.where(city_id: city_id)
    return x.where("power >=" "#{siddet}")
  end

end
