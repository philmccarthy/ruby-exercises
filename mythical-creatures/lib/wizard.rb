class Wizard
  attr_accessor :name, :bearded, :rested, :cast_count

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @cast_count = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    @cast_count < 3
  end

  def cast
    @cast_count += 1
    "Magic Missile!"
  end
end
