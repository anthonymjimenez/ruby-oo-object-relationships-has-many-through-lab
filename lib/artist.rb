require 'pry'
class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end
    
    def self.all
        @@all
    end

    def songs
        Song.all.find_all { |element| element.artist == self }
    end

    def new_song(title, genre)
        Song.new(title, self, genre)
    end

    def genres
        songs.map { |element| element.genre}
    end
end 
