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
    instance = self.new
    instance.save
    return instance
  end

  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    return song
  end

end
