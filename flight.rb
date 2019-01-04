class Flight

  attr_reader :destination, :passengers

  def initialize(destination)
    @destination = destination
    @passengers = []
  end

  def passenger_count()
    return @passengers.length()
  end

end
