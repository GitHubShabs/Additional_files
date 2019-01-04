class Bag

  attr_reader :weight, :type

  def initialize(weight, type)
    @weight = weight
    @type = type
  end

  def bag_has_no_weight
    return @weight
  end

  def add_to_bag(bag_weight)
    @weight = @weight + bag_weight
  end

  def bag_weight
    return @weight
  end

end
