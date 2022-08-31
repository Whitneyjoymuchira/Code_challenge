# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
Role.create(salary:100_000, character_name:"Khalisi", actor_id: 7, movie_id: 1)
Role.create(salary:50_000, character_name:"Masiror", actor_id: 1, movie_id: 2)
Role.create(salary:100_000, character_name:"Vickoria", actor_id: 2, movie_id: 1)
Role.create(salary:100_000, character_name:"Chinia", actor_id: 1, movie_id: 1)
Role.create(salary:200_000, character_name:"Ezra", actor_id: 2, movie_id: 2)
Role.create(salary:50_000, character_name:"Naruto", actor_id: 3, movie_id: 1)
Role.create(salary:100_000, character_name:"Izen", actor_id: 4, movie_id: 2)
Role.create(salary:100_000, character_name:"Konan", actor_id: 3, movie_id: 2)
Role.create(salary:200_000, character_name:"Ichigo", actor_id: 4, movie_id: 1)
# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here

puts "Seeding done!"