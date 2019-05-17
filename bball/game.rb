require_relative 'helpers'

class Game
  include Helpers

  attr_accessor :game_stats

  def initialize(teams)
    @game_stats = {}
    teams.each do |team|
      @game_stats[get_symbol_from_string(team.name)] = 0
    end
  end

  def play(team, action)
    if action == "score" 
      @game_stats[get_symbol_from_string(team.name)] += 2
    end
  end
end