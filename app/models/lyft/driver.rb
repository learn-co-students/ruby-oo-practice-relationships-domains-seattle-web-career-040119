class Driver

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def passengers
    rides.map do |ride|
      ride.passenger
    end
  end

  def distance
    rides.map do |ride|
      ride.distance
    end.sum
  end

  def self.mileage_cap(distance_input)
    self.all.select do |driver|
      driver.distance > distance_input
    end
  end

end