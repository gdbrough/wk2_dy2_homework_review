class River

  attr_reader :name, :number_of_fish
  attr_writer :name, :number_of_fish

  def initialize(name, number_of_fish)
    @name = name
    @number_of_fish = number_of_fish
  end

  def count_fish_in_river
    return @number_of_fish
  end

  def bear_takes(fish)
    @number_of_fish -= 1
    return @number_of_fish
  end

end
