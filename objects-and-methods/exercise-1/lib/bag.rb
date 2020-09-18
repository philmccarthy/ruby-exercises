class Bag
  attr_accessor :empty, :candies

  def initialize (candies='', empty = true)
    @candies = Array.new(0)
    @empty = empty
  end

  def empty?
    @candies.empty?
  end

  def count
    candies.count
  end

  def <<(args)
    @candy = args
    @candies << @candy
  end

  def contains?(type)
    @candies.any? do |candy|
    @candy.type == type
    end
  end
end
