require "pry"
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = Song.new 
    song.save 
    song
  end 
  
  def self.new_by_name(song_name)
    song = Song.new 
    song.name = song_name
    song
  end 
  
  def self.create_by_name(song_name)
    song = Song.create 
    song.name = song_name
    song
  end 
  
  def self.find_by_name(song_name)
     @@all.find {|s| s.name == song_name}
  end 
  
  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end 
  
  def self.alphabetical 
    @@all.sort_by {|s| s.name}
  end 
  
  def self.new_from_filename(filename)
    parts = filename.split("-")
    part[0] = artist_name
    parts[1].gsub(".mp3","") = song_name
    
    song = Song.new 
    song.name = song_name
    song.artist_name = artist_name
    binding.pry
    
  end 
  
end 


