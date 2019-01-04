require('minitest/autorun')
require('minitest/rg')
require_relative('../bag.rb')
require_relative('../flight.rb')
require_relative('../passenger.rb')

class BagTest < MiniTest::Test

  def setup()
    @bag1 = Bag.new(0, "suitcase")
    @bag2 = Bag.new(10, "suitcase")
  end

  def test_can_create_bag()
    assert_equal(Bag, @bag1.class())
  end

  def test_bag_has_no_weight()
    empty_bag = Bag.new(0, "suitcase")
    assert_equal(0, empty_bag.weight)
  end

  def test_bag_has_type()
    assert_equal("suitcase", @bag1.type())
  end

  def test_add_to_bag()
    increased_bag_weight = Bag.new(20, "suitcase")
    increased_bag_weight.add_to_bag(15)
    assert_equal(35, increased_bag_weight.bag_weight)
  end

end
