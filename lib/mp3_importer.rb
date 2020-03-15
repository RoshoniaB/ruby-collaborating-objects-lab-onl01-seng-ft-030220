class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end
  
  def files
   @files = Dir.glob("#{path}/*.mp3").collect
  end

  def import
    files.each{|f| Song.new_by_filename(some_filename)}
  end
end