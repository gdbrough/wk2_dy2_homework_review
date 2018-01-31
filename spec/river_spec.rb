require("minitest/autorun")
require("minitest/rg")

require_relative("../river.rb")
require_relative("../bear.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
  end

  def test_returns_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_returns_number_of_fish
    nbr_fish = @river.count_fish_in_river()
    assert_equal(0, nbr_fish)
  end

  def test_can_add_fish
    fish = Fish.new("Fingers")
    @river.add_fish(fish)
    assert_equal(1, @river.count_fish_in_river())
  end

  def test_can_remove_fish
    fish = Fish.new("Pie")
    @river.add_fish(fish)
    fish_to_be_eaten = @river.remove_fish()
    assert_equal(0, @river.count_fish_in_river())
    assert_equal("Pie", fish_to_be_eaten.name)
  end

end
