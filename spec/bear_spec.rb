require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Huggy")
  end

  def test_returns_bears_name
    assert_equal("Huggy", @bear.name)
  end

  def test_bear_has_stomach__empty
    assert_equal(0, @bear.food_count)
  end

  def test_bear_can_eat_fish
    fish = Fish.new("Lunch")
    @bear.catch_fish(fish)
    assert_equal(1, @bear.food_count)
  end

  def test_bear_can_eat_fish_from_river
    river = River.new("Clyde")
    fish = Fish.new("Dinner")
    river.add_fish(fish)
    @bear.catch_fish(river.remove_fish())
    assert_equal(1, @bear.food_count())
  end

  # def test_how_many_fish_in_bears_stomach
  #   fish_eaten_by_bear = @bear.check_stomach
  #   assert_equal(0, fish_eaten_by_bear)
  # end
  #
  # def test_bear_can_catch_fish
  #   @bear.catch_fish("Salmon")
  #   fish_eaten_by_bear = @bear.check_stomach
  #   assert_equal(1, fish_eaten_by_bear)
  # end
  #
  # def test_bear_roar
  #   # @bear.roar()
  #   assert_equal("ROAR!!!!!", @bear.roar())
  # end

end
