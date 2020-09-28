class Ogre
  attr_reader :name, :swings

  def initialize(name, home='Swamp')
    @name = name
    @home = home
    @swings = 0
  end

  def home
    @home
  end

  def encounter(target)
    target.encounter
    if target.notices_ogre?
      swing_at(target)
    end
  end

  def swing_at(target)
    @swings += 1
    target.swung_at
  end

  def apologize(target)
    target.receive_apology
  end
end

class Human
  attr_reader :name

  def initialize
    @name = 'Jane'
    @encounter_counter = 0
    @notices_ogre = false
    @swung_at = 0
    @knocked_out = false
  end

  def encounter
    @encounter_counter += 1
    notice_tracker
  end

  def encounter_counter
    @encounter_counter
  end

  def notices_ogre?
    @notices_ogre
  end

  def notice_tracker
    @notices_ogre = if @encounter_counter % 3 == 0
                    true
                    else false
                    end
  end

  def swung_at
    @swung_at += 1
    get_hit
  end

  def get_hit
    @knocked_out = if @swung_at % 2 == 0
                    true
                  else false
                  end
  end

  def knocked_out?
    @knocked_out
  end

  def receive_apology
    @knocked_out = false
  end
end
