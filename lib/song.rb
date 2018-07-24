class Song
attr_accessor :name, :artist, :genre

 @@count =0
 @@genres=[]
 @@artists =[]
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count +=1
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
    gen_count = {}
    @@genres.each do |genre|
      if gen_count[genre]
        gen_count[genre] +=1
      else
        gen_count[genre] = 1
      end
  end
  gen_count
end

  def self.artist_count
    art_count = {}
    @@artists.each do |art|
      if art_count[art]
        art_count[art] +=1
      else
        art_count[art] = 1
      end
    end
    art_count
    end




end
