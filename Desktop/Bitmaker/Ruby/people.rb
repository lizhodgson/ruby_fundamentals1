class Person
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def greeting
		puts "Hi, my name is #{@name}!"
	end
end


class Student < Person

	def learn
		puts "I get it."
	end	

end

class Instructor < Person

	def teach
		puts "In Ruby everything is an object."
			
		end	

end

# Call the teach method on your instructor instance and 
# call the learn method on your student. Next, call the teach method on your student instance. What happens? Why doesn't that 
# work? Leave a comment in your program explaining why.

chris = Instructor.new("Chris")
# chris.name = "Chris"
chris.greeting

christina = Student.new("Christina")
# christina.name = "Christina"
christina.greeting

chris.teach
christina.learn

#is it because the teach method is outside the teacher class?
