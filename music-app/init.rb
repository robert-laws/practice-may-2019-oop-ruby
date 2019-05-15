require_relative 'artist'
require_relative 'song'
require_relative 'genre'

a = Artist.new("Bob Cobb")
g = Genre.new("Jazz")

s = Song.new("Groovebeat", a, g)


p a.songs.size
p a.songs.include?(s)
p a.songs.collect { |song| song.name }
p "--------"
p s.artist.name
p "--------"
s = Song.new("Groovebeat", a, g)
p g.songs.size
p g.songs.collect { |song| song.name }
unless g.songs.include?(s)
  p "match"
end

