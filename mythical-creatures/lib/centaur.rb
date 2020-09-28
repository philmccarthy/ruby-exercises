class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @activity_count = 0
    @rested = false
    @sick = false
  end

  def ready?
    !cranky? && standing?
  end

  def cranky?
    cranky_update
    @cranky
  end

  def standing?
    @standing
  end

  def laying?
    !standing?
  end

  def rested?
    @rested
  end

  def sick?
    @sick
  end

  def shoot
    return "NO!" if !ready?
    @activity_count += 1
    "Twang!!!"
  end

  def run
    return "NO!" if !ready?
    @activity_count += 1
    "Clop clop clop clop!!!"
  end

  def cranky_update
    @cranky = if rested?
      false
    elsif @activity_count >= 3
      true
    else false
    end
  end

  def stand_up
    @standing = true
  end

  def lay_down
    @standing = false
  end

  def sleep
    if standing?
      "NO!"
    else
      @cranky = false
      @rested = true
      "Sleeping m'lord."
    end
  end

  def drink_potion
    if standing? && rested?
      @sick = true
    elsif standing?
      @rested = true
    else "NO!"
    end
  end
end
