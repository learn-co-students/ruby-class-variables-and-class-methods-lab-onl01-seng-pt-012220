class Song 
 attr_accessor :name, :artist, :genre 
 
 @@count = 0 
 @@artists = []
 @@genres = []
 
  def initialize (name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@artists.push artist 
    @@genres.push genre 
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
  def self.genre_count
    new_hash = {}
    @@genres.each do |g|
      if new_hash[g]
        new_hash[g] += 1 
      else
        new_hash[g] = 1 
      end 
    end 
    new_hash 
  end 
  def self.artist_count
    new_hash = {}
    @@artists.each do |a|
      if new_hash[a]
        new_hash[a] += 1 
      else 
        new_hash[a] = 1 
      end 
    end 
    new_hash 
  end 
end 

 