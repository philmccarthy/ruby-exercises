class Rabbit
  attr_accessor :name, :num_syllables

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}", v)
    end
    if num_syllables != 2
      @name = name
    else @name = name + ' Rabbit'
    end
  end
end
