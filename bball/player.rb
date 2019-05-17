class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def shoot
    [0, 1].sample == 0 ? "score" : "miss"
  end
end