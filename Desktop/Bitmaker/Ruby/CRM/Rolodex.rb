class Rolodex
	@@ids = 1001

	def initialize
		@contacts = []
		#@ids = 1001
	end

	def add_contact(contact)
		contact.id = @@ids
		@@ids += 1

	end	
end		