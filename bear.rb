class Bear

  attr_reader :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def food_count
    return @stomach.compact.count()
  end

  def catch_fish(fish)
    @stomach << fish
  end
  
  def roar
    return "ROAR!!!!!"
  end

end
