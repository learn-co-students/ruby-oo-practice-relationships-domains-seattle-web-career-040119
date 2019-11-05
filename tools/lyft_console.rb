require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

passenger_1 = Passenger.new("Adam")
passenger_2 = Passenger.new("Bob")
passenger_3 = Passenger.new("Cassie")

driver_1 = Driver.new("Xavier")
driver_2 = Driver.new("Yani")
driver_3 = Driver.new("Zack")

ride_1 = Ride.new(passenger_1, driver_1, 80)
ride_2 = Ride.new(passenger_2, driver_1, 5)
ride_3 = Ride.new(passenger_3, driver_1, 50)
ride_4 = Ride.new(passenger_1, driver_2, 120)
ride_5 = Ride.new(passenger_2, driver_2, 30)
ride_6 = Ride.new(passenger_3, driver_3, 10)

Pry.start
puts ""
puts "Session done."
puts ""