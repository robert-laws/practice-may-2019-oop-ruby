require 'pry'

class Artist
  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def add_song(song)
    if song.artist == nil
      song.artist = self
      songs << song
    else
      unless songs.include?(song)
        songs << song
      end
    end
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    Artist.new(name).save
  end
end