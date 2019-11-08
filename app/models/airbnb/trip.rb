class Trip

  attr_accessor :listing, :guest

  @@all = []

  def initialize(guest, listing)
    @guest = guest
    @listing = listing
    @@all << self
  end

  def self.all
    @@all
  end


end