gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'baby'
require 'pry'

class BabyTest < Minitest::Test
  def test_babies_are_tired
    baby = Baby.new
    assert baby.tired?
  end

  def test_not_so_tired_after_a_nap
    # skip
    baby = Baby.new
    binding.pry
    baby.nap
    refute baby.tired?
  end

end
