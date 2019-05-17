require_relative 'helpers'
require_relative 'team'

class Game
  include Helpers

  attr_reader :teams
  attr_accessor :game_stats, :current_possession

  def initialize(teams)
    @game_stats = {}
    @teams = []
    teams.each do |team|
      @teams << team
      @game_stats[get_symbol_from_string(team.name)] = 0
    end
    @current_possession = 1
  end

  def play
    change_team
    current_team = self.teams[self.current_possession]
    if possession(current_team)
      @game_stats[get_symbol_from_string(current_team.name)] += 2
    end
  end

  def possession(team)
    team.run_play
  end

  def change_team
    self.current_possession = self.current_possession == 0 ? 1 : 0
  end
end