require_relative 'artist'
require_relative 'song'
require 'pry'

class MP3Importer

  attr_accessor :name, :path
  @@all = []

  def initialize(path)
    @path = path
  end

  def files
    path_contents = Dir["#{@path}/*.mp3"]
    path_contents.map do |file_name|
      @@all << file_name[21...file_name.size]
    end
    @@all
  end

  def import
    @@all.each do |file|

    new_song = Song.new_by_filename(file)
    new_song.artist.add_song(new_song)
    # binding.pry
    end
    @@all
  end





end
