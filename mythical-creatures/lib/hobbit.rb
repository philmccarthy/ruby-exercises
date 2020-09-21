class Hobbit
  attr_accessor :name

  def initialize(name, disposition='homebody', age=0)
    @name = name
    @disposition = disposition
    @age = 0
  end

  def disposition
    @disposition
  end

  def age
    @age
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    @age >= 33
  end

  def old?
    @age >= 101
  end

  def has_ring?
    @name == 'Frodo'
  end

  def is_short?
    true
  end
end
