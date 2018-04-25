require 'pry'

class Song
  
  @@count = 0
  @@songs = []
  @@artists = []
  @@genres = []
  
  def initialize(song, artist, genre)
    @@songs << @song = song
    @@artists << @artist = artist
    @@genres << @genre = genre
    @@count += 1 
  end
  
  def name 
    @song
  end
  
  def artist
    @artist
  end
  
  def genre 
    @genre
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
    count_hash = {}
    self.genres.map do |genre|  
      count_hash[genre] = @@genres.count() 
    end
  end
  
  def self.artist_count
    @@artists.count 
  end
end

#binding.pry