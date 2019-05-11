class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song.save
    song
  end

  def self.find_by_name(name)
    Song.all.find { |song| song.name == name }
  end

  def self.find_or_create_by_name(name)
    Song.find_by_name(name) || Song.new_by_name(name)
  end
end

song = Song.create
# p Song.all.include?(song)

song2 = Song.new_by_name("The Middle")
# p song2.name

# p Song.all.include?(song2)
# p Song.find_by_name("The Middle")

p song_1 = Song.find_or_create_by_name("Blank Space")
p song_2 = Song.find_or_create_by_name("Blank Space")

p song_1 == song_2