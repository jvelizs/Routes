class Stop < ApplicationRecord
  belongs_to :route
  attr_accessor :description, :stop_type, :city
  
  def short_description
    description[0..50] + '...'
  end
  
  def self.get_stops_by_city(city)
    Stop.where("city = '#{city}'").order('created_at DESC')
  end
  
  def self.recent_stops
    Stop.where('created_at > ?', Time.now - 7.days).order('created_at DESC')
  end
  
  def stop_info
    if stop_type == 1
      "Esta es una parada ubicada en una zona concurrida con múltiples accesos y
      servicios disponibles para los pasajeros, incluyendo áreas de descanso, información
      turística, y conexiones con otras rutas de transporte público, lo que la convierte en
      un punto estratégico en la red de transporte."
    else
      "Esta es una parada ubicada en una zona tranquila, ideal para aquellos que buscan
      un lugar más relajado y menos concurrido. Aunque no cuenta con tantas facilidades como
      las paradas en zonas concurridas, ofrece un ambiente agradable y seguro para los
      pasajeros."
    end
  end
end
