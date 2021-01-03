class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

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
        genre_hash = {}
        checked_genres = []
        @@genres.each do |genre|
            if checked_genres.include?(genre)
                genre_hash[genre] += 1
            else
                genre_hash[genre] = 1
            end
            checked_genres << genre
        end
        return genre_hash
    end

    def self.artist_count
        artists_hash = {}
        checked_artists = []
        @@artists.each do |artist|
            if checked_artists.include?(artist)
                artists_hash[artist] += 1
            else
                artists_hash[artist] = 1
            end
            checked_artists << artist
        end
        return artists_hash
    end
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist

        @@count += 1
    end



end