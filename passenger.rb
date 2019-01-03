class Passenger

  attr_reader :name, :destination, :luggage

  def initialize(name, destination,luggage)
    @name = name
    @destination = destination
    @luggage = luggage
  end

end
