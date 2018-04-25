require 'pry'

class Song
  
  @@count = 0
  @@songs = []
  @@artists = []
  @@genres = []
  
  def initialize(song, artist, genre)
    @@songs << song
    @@artists << artist
    @@genres << genre
    @@count += 1 
    
  end
  
  def self.count 
    @@count
  end
  
  def self.artists
    @@artists.count
  end
  
end

#binding.pry