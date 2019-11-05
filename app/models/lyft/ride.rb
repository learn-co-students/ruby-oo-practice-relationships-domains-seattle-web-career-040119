class Ride

  attr_accessor :passenger, :driver, :distance

  @@all = []

  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    self.all.map do |ride|
      ride.distance
    end.sum/self.all.length.to_f
  end

end