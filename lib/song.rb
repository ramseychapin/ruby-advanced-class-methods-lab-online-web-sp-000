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
    instance = self.new
    instance.name = song_name
    instance.save
    return instance
  end

  def self.find_by_name(song_name)
    self.all.find {|instance| instance.name == song_name }
  end

  def self.find_or_create_by_name(song_name)
    find_by_name(song_name) || create_by_name(song_name)
  end

end
