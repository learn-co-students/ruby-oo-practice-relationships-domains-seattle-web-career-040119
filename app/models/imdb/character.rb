class Character

  attr_accessor :name, :actor

  @@all = []

  def initialize(name, actor)
    @name = name
    @actor = actor
    @@all << self
  end

  def self.all
    @@all
  end

  # should return which character of film/television appears in the most films or tv shows
  def self.most_appearances
    cm_group = CharacterMovie.all.group_by do |cm|
      cm.character
    end
    cs_group = CharacterShow.all.group_by do |cs|
      cs.character
    end
    cm_group.merge(cs_group)
    cm_group.max_by do |k, v|
        v.count
    end.first
  end
  
end