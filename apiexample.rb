#base case api example
require 'rubygems'
require 'httparty'

class EdutechtionalResty
	include HTTParty
	base_uri "edutechtional-resty.herokuapp.com/"

	def posts
		self.class.get('/posts.json')
	end
end	

edutechtional_resty = EdutechtionalResty.new
#puts edutechtional_resty.posts

edutechtional_resty.posts.each do |post|
	p "Title: #{post['title']} | Description: #{post['description']}"
end

#response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

#puts response.body
#puts response.code 

#returns 200 status code which is good to go.

#puts response.message
#puts response.headers.inspect

# class StackExchange
# 	include HTTParty
# 	base_uri 'api.stackexchange.com'

# 	def initialize(service, page)
# 		@options = { query: {site: service}}
# 	end

# 	def questions
# 		self.class.get('/2.2/questions', @options)
# 	end

# 	def users
# 		self.class.get('/2.2/users', @options)
# 	end
# end

# stack_exchange = StackExchange.new('stackoverflow', 1)
# #puts stack_exchange.questions
# puts stack_exchange.users