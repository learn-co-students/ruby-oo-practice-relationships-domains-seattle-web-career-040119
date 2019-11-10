class Client

  attr_accessor :name, :trainer

  @@all =[]

  def initialize(name, trainer)
    @name = name
    @trainer = trainer
    @@all << self
  end

  def self.all
    @@all
  end

  def assign_trainer(trainer)
    Client.new(self.name, trainer)
  end

end