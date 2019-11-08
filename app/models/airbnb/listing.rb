class Listing

  attr_accessor :address, :city_name

  @@all = []

  def initialize(address, city_name)
    @address = address
    @city_name = city_name
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    trips =Trip.all.select do |trip|
      trip.listing == self
    end
    trips.map do |trip|
      trip.guest
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def trip_count
    trips.size
  end

  def self.find_by_city(city)
    self.all.select do |listing|
      listing.city_name == city
    end
  end

  def self.most_popular
    self.all.max_by do |listing|
      self.all.count(listing)
    end
  end

end