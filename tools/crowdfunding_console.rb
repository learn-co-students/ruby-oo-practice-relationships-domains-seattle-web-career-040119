require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# your models are users, projects and pledges
# a project will have a pledge goal amount
# a user can both create and back projects, so a user will have multiple connections to projects based on those different roles



# Crowdfunding

u1 = User.new("Steve Rogers")
u2 = User.new("Tony Stark")
u3 = User.new("Thor Odinson")
u4 = User.new("Bruce Banner")
u5 = User.new("Loki")

# name, creator, goal_amount
pr1 = Project.new("Vibranium Mine", u1, 20)
pr2 = Project.new("Arc Reactor Research", u2, 20)
pr3 = Project.new("Mjolnir Recreation Fund", u3, 20)
pr4 = Project.new("Hulk Sequel", u4, 20)

# user, project, amount
pl1 = Pledge.new(u1, pr1, 10)
pl2 = Pledge.new(u2, pr2, 20)
pl3 = Pledge.new(u3, pr3, 30)
pl4 = Pledge.new(u2, pr2, 20)
pl5 = Pledge.new(u3, pr3, 20)

Pry.start

puts "Session done."
puts ""