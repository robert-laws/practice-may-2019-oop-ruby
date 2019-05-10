require_relative 'player'

class Team
  attr_reader :roster

  def initialize(names)
    @roster = []
    names.each do |name|
      p = Player.new(name)
      @roster << p
    end
  end
end