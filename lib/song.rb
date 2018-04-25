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
    self.genres.each do |genre|  
      count_hash[genre] = @@genres.count {
        |x| x == genre
      }
    end
    count_hash
  end
  
  def self.artist_count
    count_hash = {}
    self.artist_count.each do |artist|  
      count_hash[artist] = @@artists.count {
        |x| x == artist
      }
    end
    count_hash
  end
  
end

#binding.pry