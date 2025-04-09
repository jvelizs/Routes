class Route < ApplicationRecord  
  has_many :stops
  attr_accessor :start_point, :end_point, :stops
  def route_name
    start_point + ' a ' + end_point
  end

  def stops_count
    stops.size
  end

  def rdur(d, s, sc, et, delay_factor)
    (d / s)  + delay_factor + (sc * et) # Calcula duración de la ruta
  end

  def self.find_by_name(name)
    Route.where("name = '#{name}'").first
  end
end
