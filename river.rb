class River

  attr_reader :name
  attr_writer :name

  def initialize(name)
    @name = name
    @number_of_fish = []
  end

  def count_fish_in_river()
    return @number_of_fish.count
  end

  def add_fish(fish)
    @number_of_fish << fish
  end

end
