require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# your models are listings, guests, trips
# a listing (i.e. a house or apartment) has many trips
# a listing has a city attribute which is a string of a city name, e.g. 'Seattle'
# a guest has many trips
# a trip belongs to a listing and a guest

# listing => trip <= guest

guest_1 = Guest.new("Adam")
guest_2 = Guest.new("Bob")
guest_3 = Guest.new("Carl")
guest_4 = Guest.new("Dave")
guest_5 = Guest.new("Eric")

listing_1 = Listing.new("1st st.", "Atlanta")
listing_2 = Listing.new("2nd st.", "Baltimore")
listing_3 = Listing.new("3rd st.", "Chicago")
listing_4 = Listing.new("4th st.", "Denver")
listing_5 = Listing.new("5th st.", "Erie")

trip_1 = Trip.new(guest_1, listing_1)
trip_2 = Trip.new(guest_2, listing_2)
trip_3 = Trip.new(guest_3, listing_3)
trip_4 = Trip.new(guest_4, listing_4)
trip_5 = Trip.new(guest_5, listing_5)
trip_6 = Trip.new(guest_1, listing_1)


Pry.start
puts ""
puts "Session done."