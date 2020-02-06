class Song

    @@count = 0 #created class varible
    @@genres = [] #class varible equal to an empty array
    @@artists = [] #class varible with an empty array

    attr_accessor :name, :artist, :genre

    def initialize(song_name, artist, genre)
        @name = song_name
        @artist = artist
        @genre = genre
        
        @@artists << artist #shovel into array 
        @@genres << genre #shovel into array
        @@count += 1 #when albums are created, add 1

    end

    def self.count #class method called count
        @@count
    end

    def self.genres #class method called genres
        @@genres.uniq! #return without dupes
    end

    def self.artists #class method 
        @@artists.uniq! #return without dupes
    end

    def self.genre_count #class method
        genre_count = {} #empty hash
        @@genres.each do |genre| #on each genre DO
            if genre_count[genre] #if already in the hash
                genre_count[genre] += 1 #add to the count
            else
                genre_count[genre] = 1 #if it's new
            end
        end
        genre_count #implicity return of genre_count
    end

    def self.artist_count
        artist_count = {} #empty hash
        @@artists.each do |artist|
            if artist_count[artist] #if already in the hash
                artist_count[artist] += 1 #add to the count
            else
                artist_count[artist] = 1 #if new artist
            end
        end
    artist_count #implicit return of artist_count
    end
    end

