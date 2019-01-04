require('minitest/autorun')
require('minitest/rg')
require_relative('../bag.rb')
require_relative('../flight.rb')
require_relative('../passenger.rb')

class FlightTest < MiniTest::Test

  def setup()
    @flight = Flight.new("Fiji")
    @passenger1 = Passenger.new("Jane", "Fiji", "suitcase")
    @passenger2 = Passenger.new("Mark", "Fiji", "suitcase")

  end

  def test_can_create_flight()
    assert_equal(Flight, @flight.class())
  end

  def test_flight_has_destination()
    assert_equal("Fiji", @flight.destination())
  end

  def test_flight_starts_with_no_passengers()
    assert_equal(0, @flight.passenger_count())
  end

  def test_count_passengers_on_flight()
    @flight.passenger_collect(@passenger1)
    assert_equal(1, @flight.passenger_count())
  end

end
