class Team
  def initialize(names)
    names.each do |name|
      p = Player.new(name)
    end
  end
end

class Player
  @@players = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@players << self
  end

  def self.players
    @@players
  end
end

# names = ["Bob", "Hal", "Jim", "Kal", "Ned"]