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
   hash_of_genres = Hash.new(0)

   @@genres.each {|genre| hash_of_genres[genre] += 1}
   hash_of_genres
  end

  def self.artist_count
    hash_of_artists = Hash.new(0)

    @@artists.each {|artist| hash_of_artists[artist] +=1}
    hash_of_artists
  end
end
