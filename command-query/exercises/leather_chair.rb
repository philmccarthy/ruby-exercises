class LeatherChair
  def initialize
    @faded = false
    @exposed = false
  end

  def faded?
    @exposed == true
  end

  def expose_to_sunlight
    @exposed = true
  end
end
