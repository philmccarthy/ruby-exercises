class Bag
  attr_reader :candies
  def initialize
    @candies = Array.new
  end

  def empty?
    count == 0
  end

  def count
    @candies.size
  end

  def << (candy)
    @candies << candy
  end

  def contains?(type)
    @candies.any? do |candy|
      candy.type == type
    end
  end

  def grab(type)
    candy = @candies.find do |candy|
      candy.type == type
      @candies.delete(candy)
    end
  end

  def take(int)
    Array.new(int) { @candies.delete(@candies.sample) }
  end
end
