class Author
	genres = %w(fiction coding history)

	genres.each do |genre|
		define_method("#{genre}_details") do |arg|
			puts "Genre: #{genre}"
			puts arg
			puts genre.object_id
		end
	end
#	def fiction_details(arg)
#		puts "Fiction"
#		puts arg
#		puts "asdfasdf"
#	end

#	def coding_details(arg)
#		puts "coding"
#		puts arg
#		puts "asdfasdf"
#	end

#	def history_details(arg)
#		puts "history"
#		puts arg
#		puts "asdfasdf"
#	end

	#define_method("some_method") do 
	#	puts "Some details"
	#end

end

author = Author.new
author.coding_details("Cal Newport")
author.fiction_details("Ayn Rand")
p author.respond_to?(:coding_details)