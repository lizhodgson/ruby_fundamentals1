require_relative './rolodex.rb'
require_relative './contact.rb'

class CRM
	attr_reader :name
	def initialize(name)
		@name = name
		@rolodex = Rolodex.new
	end	

	def name
		@name
	end	


	def print_main_menu
		puts "[1] Add a contact"
		puts "[2] Add a Modify a contact"
		puts "[3] Display al contact"
		puts "[4] Display one contact"
		puts "[5] Display an attribute contact"
		puts "[6] Delete a contact"
		puts "[7] Exit"
		puts "Enter a number."
	end

	def	main_menu
		puts "Welcome to #{@name}"

	while true	
		print_main_menu
		input = gets.chomp.to_i
		choose_option (input)
		return if input = 7
		end
	end

	def choose_option(option)
		case option
		when 1 then add_contact
		when 2 then modify_contact
		when 3 then display_contact
		when 4 then display_contact
		when 5 then display_attribute
		when 6 then delete_contact
		when 7 then
			puts "Goodbye!"
			return
		else
		 puts "Incorrect option, try again."	

		#puts "Inside choose option: #{option}"
		# -> option = 4
		end
	end

	def add_contact
		puts "Provide Contact Details"

		print "First Name: "
		first_name = gets.chomp

		print Last Name: "
		Last_name = gets.chomp

		print "Email: "
		first_name = gets.chomp

		print "Note "
		note = gets.chomp

		new_contact = Contact.new(first_name, last_name, emaail, note)
		@rolodex.add_contact(new_contact)
	end	
end	

bitmaker = CRM.new("Bitmaker Labs CRM")
bitmaker.main_menu

puts bitmaker.name
