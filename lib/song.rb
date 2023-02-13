 class Song
    attr_accessor:name, :artist, :genre
    @@count= 0
    @@genres =[]
    @@artists =[]
    def initialize(name, artist, genre)
        @name= name
        @artist= artist
        @genre = genre
        @@genres<< genre
        @@count+=1
        @@artists<< artist
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
 ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
 ninety_nine_problems2 = Song.new("99", "Jay", "raps")
ninety_nine_problems.name
# => "99 Problems"

ninety_nine_problems.artist
# => "Jay-Z"

ninety_nine_problems.genre
# => "rap


 puts ninety_nine_problems.name
 puts ninety_nine_problems.artist
 puts ninety_nine_problems.genre
 puts Song.genre_count
 puts Song.artist_count
