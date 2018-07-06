require 'pry' 

class Artist 

attr_accessor :name, :songs, :genre


@@all = []
  
def initialize(name)
  @name = name 
  @songs = []
end 

def self.all 
    @@all 
end 

def self.destroy_all 
  @@all.clear
end 

def save 
  @@all << self 
end 

def self.create(artist_name)
  new(artist_name).tap{|song| song.save} 
end 

def add_song(song) 
  @songs << song unless @songs.include?(song)
  song.artist = self unless song.artist == self 
end  

def genres 
  self.songs.collect{|g| g.genre}.uniq 
end 


 
  
end 