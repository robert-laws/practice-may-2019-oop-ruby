require_relative 'player'
require_relative 'team'
require_relative 'game'

p1 = Player.new("Bob")
p2 = Player.new("Kal")

t1 = Team.new("Ducks", [p1])

t2 = Team.new("Seals", [p2])

g = Game.new([t1, t2])

# p g.game_stats

g.play(t1, t1.players[0].shoot)
g.play(t2, t2.players[0].shoot)
g.play(t1, t1.players[0].shoot)
g.play(t2, t2.players[0].shoot)


p g.game_stats