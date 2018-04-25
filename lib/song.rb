require 'pry'

class Song
  
  @@count = 0
  @@artists = []
  
  def initialize(song, artist, genre)
    @@songs << song
    @@artists << artist
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