class Person
  attr_accessor :name, :stoned

  def initialize(name, stoned=false)
    @name = name
    @stoned = stoned
  end

  def stoned?
    @stoned
  end
end
