#See if a string is a valid email or not.
VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
#Standard set of symbols checked in one line of code.

#all the elements before the @ symbol: letters, numbers, and dots.  Then after @ you have all symbols, then another . for .net, .com etc.. insensitive

def is_valid_email? email
	email =~ VALID_EMAIL_REGEX
end

p is_valid_email?("jason@vasquez.com") ? "Valid" : "Invalid"
p is_valid_email?("jasonvasquez.com") ? "Valid" : "Invalid"
p is_valid_email?("jason.v@vasquez.com") ? "Valid" : "Invalid"
p is_valid_email?("jason@vasquez") ? "Valid" : "Invalid"

#returns
#Valid
#Invalid
#Valid
#Invalid

p is_valid_email?("jason_v@vasquez.com") ? "Valid" : "Invalid"

#Valid

#In a Rails App
class Job < ActiveRecord::Base
	validates_presence_of :req_number, :title, :city, :state, :description, :requirements
	has_many :job_applications

	validate :has_valid_email?

	VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

	def has_valid_email?
		self.email =~ VALID_EMAIL_REGEX
	end
end
