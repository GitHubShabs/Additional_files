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

  def total_luggage_weight()
    sum = 0
    @luggage.each {|a| sum+=a }
    return a
  end



end
