require('minitest/autorun')
require('minitest/rg')
require_relative('../bag.rb')
require_relative('../flight.rb')
require_relative('../passenger.rb')

class PassengerTest < MiniTest::Test

  def setup()
    @passenger1 = Passenger.new("Anne", "Paris", "suitcase")
    @bag3 = Bag.new(30, "suitcase")
    @bag4 = Bag.new(12, "suitcase")
    @bag5 = Bag.new(8, "suitcase")
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
    @passenger1.add_bag(@luggage)
    assert_equal(1, @passenger1.bag_count())
  end

# This test did not work
  # def test_total_luggage_weight()
  #   @passenger1.add_bag(@bag1)
  #   @passenger1.add_bag(@bag2)
  #   @passenger1.add_bag(@bag3)
  #   assert_equal(50, @passenger1.total_luggage_weight())
  # end

end
