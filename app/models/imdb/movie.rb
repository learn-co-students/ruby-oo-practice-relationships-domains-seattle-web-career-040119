class Movie

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # should return the movie which has the most actors in it.

  def self.most_actors
    cm_group = CharacterMovie.all.group_by do |cm|
      cm.movie
    end
    binding.pry
    cm_group.max_by do |k, v|
      v.count
    end.first
  end
  
end