class Passenger

  attr_reader :name, :destination, :luggage

  def initialize(name, destination,luggage)
    @name = name
    @destination = destination
    @luggage = []
  end

  def add_bag(suitcase)
    @luggage << suitcase
  end

  def bag_count()
    return @luggage.length()
  end



end
