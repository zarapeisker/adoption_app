require "pry"

require_relative "shelter"
require_relative "pet"
require_relative "client"

shelter = Shelter.new(5000, 2, 50)
shelter.pets = {
	"fido" => Pet.new("fido", "M", "Golden", "none", ["balls", "frogs"]),
	"spot" => Pet.new("spot", "F", "Pitbull", "none", ["newspapers", "shoes"]),
	"spike" => Pet.new("spike", "M", "Pug", "none", ["waterbowls", "laserpointers"]),
	"rover" => Pet.new("rover", "F", "Bulldog", "none", ["hats", "chewies"]),
}


print " (l)ist available pets, (a)dopt a pet, (r)eturn a pet, (q)uit"
response = gets.chomp.downcase

while response != "q"
 	if response == "l"
 		shelter.pets.each do |x|
 			puts x[1]
 		end
 		print " (l)ist available pets, (a)dopt a pet, (r)eturn a pet, (q)uit"
 		response = gets.chomp.downcase
 	elsif response == "a"
 		print "Congratulations! What's your name?"
 		client_name = gets.chomp
 		print "Is your gender M or F?"
 		gender = gets.chomp
 		print "How many kids do you have?"
 		kids = gets.chomp
 		print "Which pet would you like?"
 		pet = gets.chomp
 		shelter.clients[client_name] = Client.new(client_name, gender, kids, pet, "no")
 		shelter.pets.delete(pet)
 		print "Thanks, #{client_name}, congratulations on adopting #{pet}!"
 		puts " (l)ist available pets, (a)dopt a pet, (r)eturn a pet, (q)uit"
 		response = gets.chomp.downcase
 	elsif response == "r"
 		print "I'm sorry your pet didn't work out for you :( What's your name?"
 		owner = gets.chomp
 		print "What is your pet's name?"
 		name = gets.chomp
 		print "What type of pet do you have?"
 		type = gets.chomp
 		toy = []
 		print "What is your pet's fav toy?"
 		toy1 = gets.chomp
 		toy << toy1
 		print "What is your pet's second fav toy?"
 		toy2 = gets.chomp
 		toy << toy2
 		shelter.pets[name] = Pet.new(name, gender, type, "none", toy)
 		print "Thanks, #{owner}, sorry #{name} didn't work out!"
 		print " (l)ist available pets, (a)dopt a pet, (r)eturn a pet, (q)uit"
 		response = gets.chomp.downcase
 	end
 end


		

# 	pets = [fido, spike, rover] 

# john = Client.new(...)
# fido = Pet.new(....)

# fido.owner = shelter.clients[]

binding.pry