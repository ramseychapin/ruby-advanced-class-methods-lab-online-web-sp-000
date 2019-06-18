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
    instance = self.new
    instance.name = song_name
    return instance
  end

  def self.create_by_name(song_name)

  end

end
