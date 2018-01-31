class Bear

  attr_reader :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def check_stomach
    return @stomach.count
  end

  def catch_fish(fish)
    @stomach.push(fish)
  end

  def roar
    return "ROAR!!!!!"
  end

end
