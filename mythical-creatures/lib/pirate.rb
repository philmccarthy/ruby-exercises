class Pirate
attr_accessor :name, :job, :cursed, :booty

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @cursed = false
    @heinous_act_count = 0
    @booty = 0
  end

  def cursed?
    @heinous_act_count > 2
  end

  def commit_heinous_act
    @heinous_act_count += 1
  end

  def pillage_ship
    @booty += 100
  end
end
