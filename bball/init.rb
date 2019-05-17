require_relative 'player'
require_relative 'team'
require_relative 'game'

p1 = Player.new("Bob", 7, 1, 3, 5)
p2 = Player.new("Kal", 6, 1, 1, 8)

t1 = Team.new("Ducks", [p1])

t2 = Team.new("Seals", [p2])

g = Game.new([t1, t2])

# p g.game_stats

g.play
g.play
p p1
p p2

p g.game_stats