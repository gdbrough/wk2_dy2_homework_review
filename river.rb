class River

  attr_reader :name
  attr_writer :name

  def initialize(name)
    @name = name
    @fishes = []
  end

  def count_fish_in_river()
    return @fishes.count
  end

  def add_fish(fish)
    @fishes << fish
  end

  def remove_fish()
    @fishes.pop()
  end

end
