class Werewolf
  attr_reader :name, :location, :eaten
  attr_accessor :hungry

  def initialize(name, location='')
    @name = name
    @location = location
    @form = 'human'
    @hungry = false
    @eaten = Array.new
  end

  def human?
    @form == 'human'
  end

  def wolf?
    @form == 'wolf'
  end

  def hungry?
    @hungry
  end

  def change!
    if @form == 'human'
      @form = 'wolf'
      @hungry = true
      "#{name} turns into a werewolf!"
    else @form = 'human'
      "#{name} turns into a boring human."
    end
  end

  def eat(victim)
    if @form == 'wolf'
      @eaten << victim.status=:dead
      @hungry = false
      "#{name} eats their victim!"
    else "#{name} can't eat their victim while in human form."
    end
  end
end
