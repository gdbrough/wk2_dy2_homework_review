require("minitest/autorun")
require("minitest/rg")

require_relative("../river.rb")
require_relative("../bear.rb")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon", 100)
  end

  def test_returns_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_returns_number_of_fish
    nbr_fish = @river.count_fish_in_river()
    assert_equal(100, nbr_fish)
  end

  def test_returns_number_of_fish__after_bear_takes_one
    @river.bear_takes("salmon")
    nbr_fish = @river.count_fish_in_river()
    assert_equal(99, nbr_fish)
  end

end
