class Show

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # should return Movies that share the same name as this Show

  def on_the_big_screen
    cms = CharacterMovie.all.select do |cm|
      cm.movie.name.include?(self.name)
    end
    cms.map do |cm|
      cm.movie
    end
  end
  
end