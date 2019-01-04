class Flight

  attr_reader :destination, :passengers

  def initialize(destination)
    @destination = destination
    @passengers = []
  end

end
