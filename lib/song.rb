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
        @@artists.push artist
        @@genres.push genre
    end

    def self.count
        @@count
    end
    
    def self.artists
        unique_a = []
        @@artists.each {|artist| unique_a.push artist if !unique_a.include?(artist)}
        unique_a
    end

    def self.genres
        unique_g = []
        @@genres.each {|genre| unique_g.push genre if !unique_g.include?(genre)}
        unique_g
    end

    def self.genre_count
        genres = {}
        @@genres.each {|genre| genres[genre] == nil ? genres[genre] = 1 : genres[genre] += 1}
        genres
    end

    def self.artist_count
        artists = {}
        @@artists.each {|artist| artists[artist] == nil ? artists[artist] =1 : artists[artist] += 1}
        artists
    end

end
