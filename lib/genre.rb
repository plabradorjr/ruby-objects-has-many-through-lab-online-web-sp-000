class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end

  def artists
    songs.map do |x|
      x.artist
    end
  end

end
