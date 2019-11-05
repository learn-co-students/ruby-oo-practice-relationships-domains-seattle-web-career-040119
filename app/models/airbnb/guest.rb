class Guest


  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    trips = Trip.all.select do |trip|
      trip.guest == self
    end
    trips.map do |trip|
      trip.listing
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def trip_count
    trips.count
  end

  def self.pro_traveller
    self.all.select do |guest|
      guest.trips.length >1
    end
  end

  def self.find_all_by_name(name)
    Guest.all.find_all do |guest|
      guest.name == name
    end
  end 

end