require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# a location has many trainers
# a trainer has many locations
# a trainer has many clients
# a client has one trainer


location_1 = Location.new("Seattle")
location_2 = Location.new("Spokane")
location_3 = Location.new("Portland")

trainer_1 = Trainer.new("Xavier")
trainer_2 = Trainer.new("Yvette")
trainer_3 = Trainer.new("Zack")

client_1 = Client.new("Ada", trainer_1)
client_2 = Client.new("Bob", trainer_2)
client_3 = Client.new("Claire", trainer_2)
client_4 = Client.new("David", trainer_3)
client_5 = Client.new("Emily", trainer_3)
client_6 = Client.new("Frankie", trainer_3)

location_trainer1 = LocationTrainer.new(location_1, trainer_1)
location_trainer2 = LocationTrainer.new(location_1, trainer_2)
location_trainer3 = LocationTrainer.new(location_3, trainer_3)
location_trainer4 = LocationTrainer.new(location_2, trainer_3)
location_trainer5 = LocationTrainer.new(location_3, trainer_2)

Pry.start

puts "Session done."
puts ""