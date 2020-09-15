class Narwhal
  attr_accessor :cute, :weight, :name

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}", v)
    end
  end

  def cute?
    if @cute == true
      true
    else false
    end
  end
end
