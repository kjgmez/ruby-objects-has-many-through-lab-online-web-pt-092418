class Genre
  attr_accessor :name, :songs, :artist
  @@all=[]
  def initialize(name)
    @name = name
    self.class.all << self
  end
  def self.all
    @@all
  end
  def songs
    Song.all.select{|song| song}
  end
  def artists
    Song.all.collect{|song| song.artist}
  end
end
