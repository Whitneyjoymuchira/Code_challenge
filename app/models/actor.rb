class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

     def total_salary
#returns the total salary for an actor based on the salary for each of their roles
         self.roles.sum(:salary)
     end

     def blockbusters
#returns a collection of all the Movie instances the actor
# has performed in that have a box_office_earnings of over $50,000,000
     Movie.where("box_office_earnings >",50000000)
     end

     def self.most_successful
        #returns one actor instance for the actor who has the highest total salary for all their roles
        largest_id=0
        largest_salary=0
        self.all.each do |actor|
            if actor.total_salary > largest_salary
                largest_salary=actor.total_salary
                largest_id=actor.id
            end
            end
            self.all.find(largest_id)
     end
end