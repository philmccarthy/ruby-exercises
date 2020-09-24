require_relative 'person.rb'

class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = Array.new
  end

  def stare(victim)
    @statues << victim
    victim.stoned=true
    if @statues.size == 4
      @statues.delete_at(0).stoned=false
    end
  end
end
