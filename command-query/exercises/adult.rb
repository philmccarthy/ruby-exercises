class Adult
  def initialize
    @drink_count = 0
    @sober = true
  end

  def sober?
    sobriety_test
    sobriety_boolean
  end

  def consume_an_alcoholic_beverage
    @drink_count += 1
  end

  def sobriety_test
    return "Adult should really be sober right now." if @drink_count == 0
    return "Still sober." if @drink_count == 1
    return "Not drunk yet." if @drink_count == 2
    return "Yeah, OK. The adult is drunk." if @drink_count == 3
    "The adult doesn't get more sober from drinking more."
  end

  def sobriety_boolean
    @sober = if @drink_count > 2 then false
             else true
             end
  end
end
