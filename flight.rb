class Flight

  attr_reader :destination

  def initialize(destination)
    @destination = destination
    @passengers = []
  end

  
