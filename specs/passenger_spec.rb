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

  def test_passenger_destination()
    assert_equal("Paris", @passenger1.destination())
  end

  def test_bags_start_empty()
    assert_equal(0, @passenger1.bag_count())
  end

  def test_add_bag()
    add_bag(@luggage)
    assert_equal(1, @luggage.bag_count())
  end


end
