class Parrot
  attr_accessor :name, :known_words

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}", v)
    end
  end

  def sound
    "Squawk!"
  end
end
