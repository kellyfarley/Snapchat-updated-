puts "Welcome to snapchat! Please initialize before doing anything else!"
puts "Enter your username."
username = gets.chomp
puts "Enter your password."
password = gets.chomp
puts "Retype your password to confirm."
until gets.chomp == password
	answer = gets.chomp
		@password = answer
	puts "Confirmation failed, please retype password."
end
puts "Enter your email."
email = gets.chomp

class Snap
	def initialize
		@story = []
	end

	def flash
		puts "Would you like Flash? Type 'yes' or 'no.'"
		answer = gets.chomp
		if answer =="yes"
			flash = true
			puts "Flash is on."
		else 
			flash = false
			puts "Flash is off."
		end
	end

	def selfie
		puts "Would you like to take a selfie? Type 'yes' or 'no.'"
		answer = gets.chomp
		if answer == "yes"
			selfie = true
			puts "You are using the front camera."
		else 
			selfie = false 
			puts "You are using the back camera."
		end 
	end

	def caption
		puts "What would you like to caption this photo?"
		caption = gets.chomp
		@caption = caption
	end


	def addtostory(newsnap)
		puts "Would you like to add this snap to your story?  Type 'yes' or 'no.'"
		answer = gets.chomp
		if answer = "yes"
			@story.push(newsnap.caption)
			puts "So far, your story consists of #{@story}!"
		else
			"Ok, we won't add this snap to your story."
		end
	end
end

class User
	def initialize(username, password, email)
		@username = username
		@password = password
		@email = email
	end

	def addsnapid(snapid)
		@snapid = snapid
	end

	def setstatus
		puts "Would you like your account to be private? Type 'yes' or 'no.'"
		answer = gets.chomp
		if answer == "yes"
			private == true
		else
			private == false
		end
	end 

	def username
		return "Your username is #{@username}."
	end

	def password
		return "Your password is #{@password}."
	end

	def email
		return "Your email is #{@email}."
	end

	def addsnap
		@snap = Snap.new
	end

end

user = User.new(username, password, email)
puts user.username
puts user.password 
puts user.email
newsnap = user.addsnap
newsnap.flash
newsnap.selfie
newsnap.addtostory(newsnap)
