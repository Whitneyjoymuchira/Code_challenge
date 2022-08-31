class Role < ActiveRecord::Base
 belongs_to :movie
 belongs_to :actor   

 def credit
  # {insert character name}: Played by {insert actor name}
  "#{self.character_name} :played by #{self.actor.name}"
 end
  
end