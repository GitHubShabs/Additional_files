require('minitest/autorun')
require('minitest/rg')
require_relative('../bag.rb')
require_relative('../flight.rb')
require_relative('../passenger.rb')

class BagTest < MiniTest::Test

  def setup()
    @bag1 = Bag.new(0, "suitcase")
  end

  def test_can_create_bag()
    assert_equal(Bag, @bag1.class())
  end



end
