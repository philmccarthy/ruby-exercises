class Lion
  attr_accessor :name, :sound

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}", v)
    end
  end
end
