require('minitest/autorun')
require('minitest/rg')
require_relative('../bag.rb')
require_relative('../flight.rb')
require_relative('../passenger.rb')

class PassengerTest < MiniTest::Test

  def setup()
    @passenger1 = Passenger.new("Anne", "Paris", "suitcase")
  end
