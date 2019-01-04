require('minitest/autorun')
require('minitest/rg')
require_relative('../bag.rb')
require_relative('../flight.rb')
require_relative('../passenger.rb')

class PassengerTest < MiniTest::Test

  def setup()
    @passenger1 = Passenger.new("Anne", "Paris", "suitcase")
  end

  def test_can_create_passenger()
    assert_equal(Passenger, @passenger1.class())
  end

  def test_passenger_name()
    assert_equal("Anne", @passenger1.name())
  end

end
