class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.highest_pledge
    Pledge.all.max_by do |pledge|
      pledge.amount
    end.user
  end

  def self.multi_pledger
    x = Pledge.all.map do |pledge|
      pledge.user.name
    end
    x.select do |y|
      x.count(y) > 1
    end.uniq
  end

  def self.project_creator
    Project.all.map do |project|
      project.user.name
    end.uniq
  end

end