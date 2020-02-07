class Song
  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    Hash[*@@genres.group_by{|v| v}.flat_map{|genre, v| [genre, v.size]}]
  end
  
  def self.artist_count
    Hash[*@@artists.group_by{|v| v}.flat_map{|artist, v| [artist, v.size]}]
  end
  
end