class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self.name
    self
  end
end

# testing below

class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def artist_name
    self.artist ? self.artist.name : nil
  end
end

adele = Artist.new("Adele")
hello = Song.new("Hello")
adele.add_song(hello)
hello.artist
