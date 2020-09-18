class Dragon
  attr_accessor :name, :color, :rider, :hungry, :eat_count

  def initialize(name = "", color = "", rider = "")
    @name = name
    @color = color.to_sym
    @rider = rider
    self.hungry = true
    self.eat_count = 0
  end

  def hungry?
    self.eat_count < 3
  end

  def eat
    self.eat_count += 1
  end
end
