require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# movies and shows have many characters
# actors have many characters
# characters only have one actor (for this model)
# characters may have multiple movies or shows
# what other relationships exist?

actor_1 = Actor.new("Robert Downey Jr.")
actor_2 = Actor.new("Edward Norton/Mark Ruffalo")
actor_3 = Actor.new("Chris Hemsworth")
actor_4 = Actor.new("Chris Evans")
actor_5 = Actor.new("Jeremy Renner")
actor_6 = Actor.new("Scar Jo")

movie_1 = Movie.new("Iron Man")
movie_2 = Movie.new("The Incredible Hulk")
movie_3 = Movie.new("Iron Man 2")
movie_4 = Movie.new("Thor")
movie_5 = Movie.new("Captain America: The First Avenger")
movie_6 = Movie.new("The Avengers")

show_1 = Show.new("Iron Man")
show_2 = Show.new("Batman")
show_3 = Show.new("Captain America: Civil War")
show_4 = Show.new("D Movie")
show_5 = Show.new("E Cinema")

character_1 = Character.new("Tony Stark", actor_1)
character_2 = Character.new("Bruce Banner", actor_2)
character_3 = Character.new("Thor", actor_3)
character_4 = Character.new("Captain America", actor_4)
character_5 = Character.new("Clint Barton", actor_5)
character_6 = Character.new("Natasha Romanoff", actor_6)
character_7 = Character.new("Evil Iron Man", actor_1)

cm_1 = CharacterMovie.new(character_1, movie_1)
cm_2 = CharacterMovie.new(character_2, movie_2)
cm_3 = CharacterMovie.new(character_1, movie_3)
cm_4 = CharacterMovie.new(character_1, movie_6)
cm_5 = CharacterMovie.new(character_2, movie_6)
cm_6 = CharacterMovie.new(character_3, movie_6)
cm_7 = CharacterMovie.new(character_4, movie_6)
cm_8 = CharacterMovie.new(character_5, movie_6)
cm_9 = CharacterMovie.new(character_6, movie_6)

cs_1 = CharacterShow.new(character_1, show_1)
cs_2 = CharacterShow.new(character_2, show_2)
cs_2 = CharacterShow.new(character_3, show_3)

Pry.start

puts "Session done."


# belongs to should store its belongs to person. it is the foreign key