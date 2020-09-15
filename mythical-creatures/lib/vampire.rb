class Vampire
  attr_accessor :name, :pet, :thirsty

  def initialize(name = 'name', pet = 'bat', thirsty = true)
    @name = name
    @pet = pet
    @thirsty = thirsty
  end

  def thirsty?
    if self.thirsty == true
      true
    else false
    end
  end

  def drink
    self.thirsty = false
  end
end
