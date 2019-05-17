require 'pry'
require_relative 'helpers'

class Player
  include Helpers

  attr_reader :name, :probabilities
  attr_accessor :blocks, :rebounds, :offensive_rebounds, :assists, :shots_taken, :shots_made, :points

  def initialize(name, block, shoot, assist, rebound)
    @name = name
    @blocks = 0
    @rebounds = 0
    @offensive_rebounds = 0
    @assists = 0
    @shots_taken = 0
    @shots_made = 0
    @points = 0
    @probabilities = {
      block: block,
      shoot: shoot,
      assist: assist,
      offensive_rebound: rebound
    }
  end

  def action(type)
    probability = @probabilities[get_symbol_from_string(type)]
    [*0..probability].sample == 0 ? true : false
  end
end