require "test_helper"

class RouteTest < ActiveSupport::TestCase
 test 'Route name test' do
    route = Route.new(start_point: 'Valparaiso', end_point: 'Santiago')
    assert_equal route.route_name, "Valparaiso a Santiago"
 end
 test 'Stops count' do
  route = Route.new(stops: ['curacavi', 'casablanca'])
  assert_equal route.stops_count, 2 
 end
 test 'Test Redur' do
  route = Route.new()
  assert_equal route.rdur(20, 5, 4, 4, 4), 24
 end
end
