class Centaur
  attr_reader :name, :breed
  attr_accessor :cranky, :standing

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @activity_count = 0
    @rested = false
    @sick = false
  end

  def shoot
    if !cranky? && @standing == true
      @activity_count += 1
      "Twang!!!"
    else "NO!"
    end
  end

  def run
    return "NO!" if cranky? && !standing?


    if !cranky? && standing?
      @activity_count += 1
      "Clop clop clop clop!!!"
    else "NO!"
    end
  end

  def cranky?
    cranky_update
    @cranky
  end

  def cranky_update
    @cranky = if rested?
                false
              elsif @activity_count >= 3
                true
              else false
              end
  end

  def standing?
    @standing
  end

  def stand_up
    @laying = false
    @standing = true
  end

  def laying?
    @laying
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def sleep
    if @standing == true
      "NO!"
    else
      @cranky = false
      @rested = true
      "Sleeping m'lord."
    end
  end

  def rested?
    @rested
  end

  def sick?
    @sick
  end

  def drink_potion
    if standing? && @rested == true
      @sick = true
    elsif standing?
      @rested = true
    else "NO!"
    end
  end
end
