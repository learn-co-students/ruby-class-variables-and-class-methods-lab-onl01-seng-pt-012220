class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
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
    @@artists.uniq
  end

  def self.genres 
    @@genres.uniq
  end
  
  def self.genre_count
    new_hash = {}
    @@genres.each do |g|
      if new_hash[g]
        # this means that the key of g exist
        #so then you want to add 1 to thee value of g
        new_hash[g] += 1
      else
      # if it doesn't exist you have to create it now
        new_hash[g] = 1
      end
    end
new_hash
  end
  
  def self.artist_count
    new_hash = {}
    @@artists.each do |g|
      if new_hash[g]
        # this means that the key of g exist 
        #so then you want to add 1 to thee value of g 
        new_hash[g] += 1
      else 
        # if it doesn't exist you have to create it now 
        new_hash[g] = 1
      end
    end
    new_hash
  end
  
end
