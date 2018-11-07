require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all =[]
  def initialize(name)
    @name = name
    self.class.all << self
  end
  def self.all
    @@all
  end
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end
  def songs
    #select
    Song.all.select{|song| song.artist == self}
  end
  def genres
    #collect
    Song.all.collect{|song| song.genre}
  end
end
