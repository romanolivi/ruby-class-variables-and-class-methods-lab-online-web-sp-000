class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @genre = genre 
    @artist = artist
    @@count += 1 
    @@genres << genre
  end

  def self.count
    @@count
  end
  
  

end