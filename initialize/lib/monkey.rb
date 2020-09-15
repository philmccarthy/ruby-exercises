class Monkey
  attr_accessor :name, :type, :favorite_food

  def initialize(arr)
    @name = arr[0]
    @type = arr[1]
    @favorite_food = arr[2]
  end
end
