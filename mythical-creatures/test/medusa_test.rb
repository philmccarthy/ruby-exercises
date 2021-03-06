gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/medusa'
require_relative '../lib/person'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues
    # skip
    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    medusa.stare(victim)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
  end

  def test_can_only_have_three_victims
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim_one = Person.new("Perseus")
    victim_two = Person.new("Gandalf")
    victim_three = Person.new("Dracula")
    victim_four = Person.new("Frankenstein")
    medusa.stare(victim_one)
    medusa.stare(victim_two)
    medusa.stare(victim_three)
    medusa.stare(victim_four)
    assert_equal 3, medusa.statues.size

  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim_one = Person.new("Perseus")
    victim_two = Person.new("Gandalf")
    victim_three = Person.new("Dracula")
    victim_four = Person.new("Frankenstein")
    medusa.stare(victim_one)
    medusa.stare(victim_two)
    medusa.stare(victim_three)
    medusa.stare(victim_four)

    refute victim_one.stoned?
    assert victim_two.stoned?
    assert victim_three.stoned?
    assert victim_four.stoned?
    assert_equal 3, medusa.statues.size
  end

end
