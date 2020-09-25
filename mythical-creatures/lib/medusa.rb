require_relative 'person.rb'

class Medusa
  attr_reader :name
  attr_accessor :statues

  def initialize(name)
    @name = name
    @statues = Array.new
  end

  def stare(victim)
    @statues << victim
    victim.stoned=true
    process_excess_victims
  end

  def process_excess_victims
    return false if @statues.size <= 3
    @statues.shift.stoned=false
  end
end
