class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name

    @artist = artist
    @@artists.push(artist)

    @genre = genre
    @@genres.push(genre)

    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    #single_artists = []
    #@@artists.each{|artist|
      #if !(single_artists.include?(artist))
        #single_artists.push(artist)
      #end
    #}
    #single_artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash_of_genres = {}
    @@genres.each{|genre|
      hash_of_genres[genre] ||= 0
      hash_of_genres[genre] += 1
    }
    hash_of_genres
  end

  def self.artist_count
    hash_of_artist = {}
    @@artists.each{|artist|
      hash_of_artist[artist] ||= 0
      hash_of_artist[artist] += 1
    }
    hash_of_artist
  end
end
