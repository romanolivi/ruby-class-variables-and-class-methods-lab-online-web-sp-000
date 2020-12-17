class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @genre = genre 
    @artist = artist
    @@count += 1 
    @@genres << genre
    @@artists << artist
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
      genre_count = Hash.new(0)
      @@genres.each {|genre| @@genres[genre] += 1}
      genre_count
  end
  

end