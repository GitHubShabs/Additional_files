require('minitest/autorun')
require('minitest/rg')
require_relative('../bag.rb')
require_relative('../flight.rb')
require_relative('../passenger.rb')

class FlightTest < MiniTest::Test

  def setup()
    @flight = Flight.new("Fiji")
  end

  def test_can_create_flight()
    assert_equal(Flight, @flight.class())
  end

end
