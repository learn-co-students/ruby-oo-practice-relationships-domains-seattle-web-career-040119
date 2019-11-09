class Actor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # should return which actor has the most different characters played.

  def self.most_characters
    Character.all.max_by do |char|
      char.name
    end.actor
  end

end