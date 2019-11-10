class Location

  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # should find which location has the least clients training there.

  def self.least_clients
    result_hash = {}
    Client.all.each do |client|
      result_hash[client.trainer] ? result_hash[client.trainer] +=1 : result_hash[client.trainer] = 1 
    end
    trainer_with_least_clients = result_hash.min_by do |k, v|
      v
    end.flatten.first
    x=LocationTrainer.all.find do |lt|
      lt.trainer == trainer_with_least_clients
    end
    x.location
  end

end