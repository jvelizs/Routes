require "test_helper"

class StopTest < ActiveSupport::TestCase
  test 'Stop Type 1' do
    stop = Stop.new(city: 'Valparaiso', description: 'Esta para es valparaiso', stop_type: 1)
    assert_equal stop.stop_info, "Esta es una parada ubicada en una zona concurrida con múltiples accesos y
      servicios disponibles para los pasajeros, incluyendo áreas de descanso, información
      turística, y conexiones con otras rutas de transporte público, lo que la convierte en
      un punto estratégico en la red de transporte."
  end
  test 'Stop Type 2' do
    stop = Stop.new(city: 'Valparaiso', description: 'Esta para es valparaiso', stop_type: 2)
    assert_equal stop.stop_info, "Esta es una parada ubicada en una zona tranquila, ideal para aquellos que buscan
      un lugar más relajado y menos concurrido. Aunque no cuenta con tantas facilidades como
      las paradas en zonas concurridas, ofrece un ambiente agradable y seguro para los
      pasajeros."
  end
  test 'Short Description' do
    stop = Stop.new(description: 'Esta es una parada ubicada en una zona tranquila, ideal para aquellos que buscan
      un lugar más relajado y menos concurrido. Aunque no cuenta con tantas facilidades como
      las paradas en zonas concurridas, ofrece un ambiente agradable y seguro para los
      pasajeros.')
    assert_equal stop.short_description, stop.description[0..50] + '...'
  end
end
