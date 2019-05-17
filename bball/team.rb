class Team
  attr_reader :name
  attr_accessor :players

  def initialize(name, players)
    @name = name
    @players = []
    players.each do |player|
      @players << player
    end
  end
end