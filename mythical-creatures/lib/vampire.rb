class Vampire
  attr_accessor :name, :pet, :thirsty

  def initialize(name = 'name', pet = 'bat', thirsty = true)
    @name = name
    @pet = pet
    @thirsty = thirsty
  end

  def thirsty?
    self.thirsty == true
  end

  def drink
    self.thirsty = false
  end
end
