
require 'pry'

class Song

    attr_accessor :artist, :name, :genre

    @@count = 0
    @@genres = []
    @@artists = []


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
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end

drive_slow = Song.new("Drive slow", "Kanye West","Rap")
problems = Song.new("99 Porblems", "Jay-Z", "Rap")
tornado = Song.new("White", "Frank Ocean", "R&B")
touch_the_sky = Song.new("Touch the Sky", "Kanye West","Rap")
binding.pry