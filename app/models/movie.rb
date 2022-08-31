class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

 def cast_role(actor, character_name, salary)
#takes a actor (an instance of the Actor class), a character_name (string),
# and a salary (integer) as arguments, and creates a new role in the
# database associated with this movie and the actor
  Role.create(salary:salary,character_name:character_name,movie_id:self.id,actor_id:actor.id )
 end

 def all_credits
#should return an Array of strings with all the roles for this movie formatted as follows: 
#["{insert character name}: Played by {insert actor name}",
# "{insert character name}: Played by {insert actor name}", ...]
self.roles.map do |g| 
    "#{g.character_name} :played by #{Actor.find(g.actor_id).name}"
end
 end
 def fire_actor(actor)
#takes an actor (an instance of the Actor class) and removes their role from this movie
#you will have to delete a row from the roles table to get this to work!
Role.where("roles.actor_id=? AND roles.movie_id =?", actor.id, self.id).destroy_all
 end
  
end