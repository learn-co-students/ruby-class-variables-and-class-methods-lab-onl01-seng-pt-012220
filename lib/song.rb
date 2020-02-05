class Song 
  attr_reader :name, :artist, :genre
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  
  def initialize(name,artist,genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1 
  @@artists << artist
  @@genres << genre
end

def self.count
  @@count
end
def self.artists
 return @@artists.uniq
end
def self.genres
 return @@genres.uniq
end
  def self.genre_count
hash = @@genres.group_by{ |gen| gen }
hash.each do |key, value|
hash[key] = value.length
 end
end
  def self.artist_count
    hash = @@artists.group_by{ |gen| gen }
    hash.each do |key, value|
      hash[key] = value.length
    end
  end
end