class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@all = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
    @@all << self
  end

  def comment
    puts get_opinion
    puts "no more comments"
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.all
    @@all
  end

  def self.clear_all
    @@all.clear
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      hash[artist] ||= 0
      hash[artist] += 1
    end
    hash
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      hash[genre] ||= 0
      hash[genre] += 1
    end
    hash
  end

  def self.find_by_name(name)
    Song.all.find { |song| song.artist == name }
  end

  private

  def get_opinion
    "The genre #{@@genres.first} is great"
  end
end

songs = [["Fun Song", "Bob Cobb", "Jazz"], ["Nighttime", "Hal Hope", "Opera"], ["Sunshine Days", "Mel Mope", "Jazz"], ["New Town", "Bob Cobb", "Dance"], ["New Song", "Mel Mope", "Jazz"]]

songs.each do |song|
  Song.new(song[0], song[1], song[2])
end

s = Song.new("Bright Song", "Jim Jupe", "Electronic")
s.comment

s = Song.new("Good Times", "Kal Kool", "Classical")
s.comment
# s.get_opinion

p Song.count
p Song.artists
p Song.genres
p Song.artist_count
p Song.genre_count

p Song.all.size
# Song.clear_all
# p Song.all

p Song.find_by_name("Bob Cobb")