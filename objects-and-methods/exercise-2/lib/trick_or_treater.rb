class TrickOrTreater
  attr_accessor :costume, :bag, :sugar_level

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    !@bag.candies.empty?
  end

  def candy_count
    @bag.count
  end

  def eat
    eaten = @bag.take(1)
    eaten.each do |candy|
      @sugar_level += candy.sugar
    end
  end
end
