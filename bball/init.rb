require_relative 'player'
require_relative 'team'
require_relative 'game'

p1 = Player.new(name: "Bob", block: 7, shoot: 1, assist: 3, rebound: 5)
p2 = Player.new(name: "Kal", block: 6, shoot: 1, assist: 1, rebound: 8)

t1 = Team.new([p1], team_name: "Ducks")

t2 = Team.new([p2], team_name: "Seals")

g = Game.new([t1, t2])

g.play
g.play
g.play
g.play
g.play
g.play
p p1
p p2

p g.game_stats